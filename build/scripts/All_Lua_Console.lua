--[[  This program is free software. It comes without any warranty, to
 the extent permitted by applicable law. You can redistribute it
 and/or modify it under the terms of the Do What The Fuck You Want
 To Public License, Version 2, as published by Sam Hocevar. See
 http://sam.zoy.org/wtfpl/COPYING for more details. --]]

-- The ALL lua-console
--   by devast8a

console = {
    version = "8.0",
    
    -- Current state of console
    -- 0 = Closed
    -- 1 = Opened
    -- 2 = Old console opened
    -- [READONLY]
    active = 0,

    -- Debug state of console, 1 if active, 0 if not
    -- In no way effected by tpt.setdebug
    -- [READONLY]
    debugmode = 0,

    -- Current command line text for console
    currentCommand = "",

    buffer = {},    -- Handle writing output to a larger display than screen can show
    colors = {},    -- store console colors & resolve text colors to RGB
    command = {},   -- current command
    history = {},   -- command history
    keys = {},      -- handle key input
    old = {},       -- support for old console
    quick = {},     -- Quick commands (commands that being with !)
    screen = {},    -- handle the drawing of the console to the screen
    
    bitwise = {},   -- Implementation for bitwise operations
}

------------------------------------------------
-- GLOBAL API ----------------------------------
------------------------------------------------
function print(message)
    console.writeln(message)
    --console.screen.buffer = console.screen.buffer .. "\n" .. message
end

function error(message)
    console.writeln(message, "error", "errorbg")
end

-- Call cmd & automatically call error (w/ error message) upon error
function ecall(cmd, ...)
    _, result = pcall(cmd, unpack(arg))

    if _ == false then
        error(result)
    end

    return _, result
end

-- Execute a commnad
function runcommand(command)
    -- Handle quick commands
    if string.sub(command, 1, 1) == "!" then
        local l = string.find(command, " ")

        if l == nil then
            command = string.sub(command, 2)
            args = ""
        else
            args = string.trim(string.sub(command, l))
            command = string.sub(command, 2, l - 1)
        end
        
        cmd = console.quick[command]
        message = "No command by the name of '" .. command .. "' exists"
        
    -- Short hand for return
    elseif string.sub(command, 1, 1) == "@" then
        command = "return " .. string.sub(command, 2)
        cmd, message = loadstring(command)
    
    -- Compile the string to a function
    else
        cmd, message = loadstring(command)
    end
    
    -- Handle errors
    if cmd == nil then
        error(message)
    else
        if args == nil then
            _, result = pcall(cmd)
        else
            _, result = pcall(cmd, args)
        end

        if _ == true then
            if result ~= nil then
                print(result)
            end
        else
            error(result)
        end
    end
end

------------------------------------------------
-- console.bitwise  ----------------------------
------------------------------------------------
console.bitwise.hasflag = function(value, flag)
    return value % (2*flag) >= flag
end

------------------------------------------------
-- string --------------------------------------
------------------------------------------------
string.trim = function (str)
    return (string.gsub(str, "^%s*(.-)%s*$", "%1"))
end

string.split = function (str, split)
    local output = {}
    
    lastpos = 1
    while true do
        pos = string.find(str, split, lastpos)
        if pos == nil then
            table.insert(output, string.sub(str, lastpos))
            return output
        end

        table.insert(output, string.sub(str, lastpos, pos-1))
        lastpos = pos + 1
    end

    return { str }
end

------------------------------------------------
-- console -------------------------------------
------------------------------------------------
console.set = function(value)
    if console.active == 2 then
        if value == 0 then
            console.active = 0
        else
            console.active = 2
        end

        return console.old.set_console(value)
    end

    if value == 0 then
        console.active = 0
        tpt.hud(1)
    else
        console.old.set_pause(1)
        tpt.hud(0)
        console.active = 1
    end
end

console.toggle = function()
    console.set(1-console.active)
end

------------------------------------------------
-- console.old ---------------------------------
------------------------------------------------
console.old = {
    active = 0,
    hud_value = 1,
}

console.old.open = function()
    -- Old console quirks
    tpt.hud(1)

    -- Open the old console
    console.active = 2
    console.old.set_console(1)
end

------------------------------------------------
-- console.old.interop -------------------------
------------------------------------------------
console.old.interop = {}

-- tpt.set_pause
console.old.interop.set_pause = function(value)
    if console.active == 0 then
        console.old.set_pause(value)
    end
end
console.old.set_pause = tpt.set_pause
tpt.set_pause = console.old.interop.set_pause

-- tpt.log
console.old.interop.log = function(message)
    if console.active == 2 then
        return console.old.log(message)
    end

    return print(message)
end
console.old.log = tpt.log
tpt.log = console.old.interop.log

-- tpt.hud
console.old.interop.hud = function(value)
    if value == 0 then
        console.old.hud_value = 0
    else
        console.old.hud_value = 1
    end
    
    console.old.hud(value)    
end
console.old.hud = tpt.hud
tpt.hud = console.old.interop.hud

-- tpt.set_console
console.old.set_console = tpt.set_console
tpt.set_console = console.set

------------------------------------------------
-- console.command -----------------------------
------------------------------------------------
console.command = {
    current = {},
    cursor = 0,
}

console.command.writechar = function(self, char, foreground, background)
    self.cursor = self.cursor + 1
    table.insert(self.current, self.cursor, {char, foreground, background})
end

console.command.clear = function(self)
    self.cursor = 0
    self.current = {}
end

console.command.set = function(self, value)
    self.cursor = #value
    self.current = value
end

console.command.left = function(self)
    if self.cursor > 0 then
        self.cursor = self.cursor - 1
    end
end

console.command.right = function(self)
    if self.cursor < #self.current then
        self.cursor = self.cursor + 1
    end
end

console.command.deleteback = function(self)
    if self.cursor > 0 then
        table.remove(self.current, self.cursor)
        self.cursor = self.cursor - 1
    end
end

console.command.deleteforward = function(self)
    if self.cursor < #self.current then
        table.remove(self.current, self.cursor + 1)
    end
end

console.command.get = function(self)
    local t = { }
    
    for i = 1,#self.current do
        t[i] = self.current[i][1]
    end

    return table.concat(t)
end

console.command.run = function(self)
    console.history:store(self.current)
    local temp = console.command:get()
    self:clear()
    runcommand(temp)
end

------------------------------------------------
-- console.buffer ------------------------------
------------------------------------------------
console.buffer = {
    x = 1,
    y = 1,
    newline = 0,
    width = 85,
    height = 500,
    lines = {},

    more = {
        enabled = false,
    }
}

console.buffer.iter = function(self, selection, func) 
    y = 0
    for i = selection.y+(1+self.y-selection.height), selection.y+self.y do
        if i < 1 then
            line = self.lines[self.height + i]
        else
            if i > self.height then
                line = self.lines[i-self.height]
            else
                line = self.lines[i]
            end
        end

        if line ~= nil then
            x = 0
            for ch = selection.x + 1, selection.x+selection.width do
                char = line[ch]
                
                if char == 0 then
                    break
                end

                if char ~= nil then
                    func(x, y, char)
                end

                x = x + 1
            end
        end

        y = y + 1
    end
end

console.buffer._write = function(char)
    self = console.buffer

    if self.newline == true then
        self.y = self.y + 1
        self.lines[self.y] = {}
        self.newline = false
    end

    if char == "\n" then
        self.newline = true
        self.x = 1
    elseif char == "\r" then
        self.x = 1
    else
        line = self.lines[self.y]
        
        if line == nil then line = {} self.lines[self.y] = line end
    
        line[self.x] = {char, self.cf, self.cb}
        
        self.x = self.x + 1    
        if self.x > self.width then
            self.y = self.y + 1
            self.x = 1
            self.lines[self.y] = {}
        end
    end

    if self.y > self.height then
        self.y = 1
        self.lines[1] = {}
    end
end

console.buffer.write = function(text, colorF, colorB)
    self = console.buffer

    self.cf = colorF
    self.cb = colorB

    string.gsub(tostring(text), ".", console.buffer._write)
end
console.write = console.buffer.write

console.buffer.clear = function()
    console.buffer.lines = {}
end
console.clear = console.buffer.clear

console.buffer.writeln = function(text, colorF, colorB)
    console.buffer.write(tostring(text) .. "\n", colorF, colorB)
end
console.writeln = console.buffer.writeln

------------------------------------------------
-- console.screen ------------------------------
------------------------------------------------
console.screen = {
    x = 0,
    y = 0,
    height = 40,
    width  = 85,
    fontx = 7,
    fonty = 9,
    offsetx = 8,
    offsety = 10,
    cursors = {},
    
    commandwidth = 70,
    commandstart = 1,
}

console.screen.right = function(self)
    self.x = self.x + 1
    if self.x > console.buffer.width - self.width then
        self.x = 0
    end
end

console.screen.left = function(self)
    self.x = self.x - 1
    if self.x < 0 then
        self.x = 0
    end
end

console.screen.down = function(self)
    self.y = self.y + 1
    if self.y > console.buffer.height - 1 then
        self.y = 0
    end
end

console.screen.up = function(self)
    self.y = self.y - 1
    if self.y < 0 then
        self.y = console.buffer.height - 1
    end
end

function g_drawchar(x, y, w, h, char, fg, bg)
    self = console.screen

    if bg ~= 0 then
        tpt.fillrect(x - 2, y - 2, w, h, bg[1], bg[2], bg[3], bg[4])
    end

    tpt.drawtext(x, y, char, fg[1], fg[2], fg[3], fg[4])
end

-- Draw each character to the console
console.screen._draw = function(x, y, char)
    self = console.screen

    rx = self.offset

    g_drawchar(
        self.offsetx + x * self.fontx,
        self.offsety + y * self.fonty,
        self.fontx + 2,
        self.fonty + 2,        
        char[1],
        console.colors.get(char[2], console.colors.foreground),
        console.colors.get(char[3], console.colors.background)
    )
end

-- Set cursor type
console.screen.setcursor = function(self, cursor)
    if cursor == nil then
        cursor = self
        self = console.screen
    end
    
    c = self.cursors[cursor]
    
    if c == nil then
        error("A cursor with the name '" .. cursor .. "' does not exist")
        return
    end

    self.cursor = self.cursors[cursor]
end

-- Draw the entire console
console.screen.draw = function(self)
    cbk = console.colors.backdrop
    cbr = console.colors.border
    cln = console.colors.line

    tpt.fillrect(5,   5, 600, 380, cbk[1], cbk[2], cbk[3], cbk[4])
    tpt.drawline(5, 372, 605, 372, cln[1], cln[2], cln[3], cln[4])
    tpt.drawrect(5,   5, 600, 380, cbr[1], cbr[2], cbr[3], cbr[4])

    res, error_message = pcall(console.buffer.iter, console.buffer, console.screen, console.screen._draw)
    tpt.drawtext(0, 0, error_message)

    -- Scrolling for the cursor
    len = #console.command.current+1
    c = console.command.cursor

    if self.commandstart > len then
        self.commandstart = len
    end

    if len > self.commandwidth then
        bound = 3


        if c < (self.commandstart + bound - 1) then
            self.commandstart = c - bound + 1
            
            if self.commandstart < 1 then
                self.commandstart = 1
            end
            
            rend = self.commandstart + self.commandwidth - 1
        elseif c > (self.commandstart + self.commandwidth - bound - 2) then
            rend = c + bound + 1

            if rend > len then
                rend = len
            end

            self.commandstart = rend - self.commandwidth + 1
        end

        rend = self.commandstart + self.commandwidth - 2
    else
        self.commandstart = 1
        rend = len
    end
    -- End scrolling cursor

    c = c - (self.commandstart - 1)

    if self.cursor.stage == 0 then
        self.cursor:run(self, c)
    end

    if console.command.current == nil then
        tpt.drawtext(8, 375, "current command is nil", 255, 0, 0)
    else
        g_drawchar(
            8,
            375,
            self.fontx + 2,
            self.fonty + 2,
            '>',
            console.colors.command,
            console.colors.commandbg
        )
       
        x = 1
        for i = self.commandstart,rend do
            char = console.command.current[i]

            if char ~= nil then
                g_drawchar(
                    12 + self.fontx * x,
                    375,
                    self.fontx + 2,
                    self.fonty + 2,
                    char[1],
                    console.colors.get(char[2], console.colors.command),
                    console.colors.get(char[3], console.colors.commandbg)
                )
            end
            x = x + 1
        end
    end

    if self.cursor.stage == 1 then
        self.cursor:run(self, c)
    end
end

------------------------------------------------
-- console.screen.cursors ----------------------
------------------------------------------------
console.screen.cursors = {
}

console.screen.cursors.line = {
    stage = 0,

    run = function(self, screen, cursorpos)
        if os.clock() % 0.8 <= 0.4 then
            c = console.colors.cursor
            x = 19 + screen.fontx * cursorpos
            tpt.drawline(
                x,
                375,
                x,
                382,
                c[1],
                c[2],
                c[3],
                c[4]
            )
        end
    end,
}

console.screen.cursors.block = {
    stage = 0,

    run = function(self, screen, cursorpos)
        if os.clock() % 0.8 <= 0.4 then
            c = console.colors.cursor

            tpt.fillrect(
                17 + screen.fontx * cursorpos,
                373,
                screen.fontx + 1,
                screen.fonty + 1,
                c[1],
                c[2],
                c[3],
                c[4])
        end
    end,
}

console.screen.cursor = console.screen.cursors.block

------------------------------------------------
-- console.colors ------------------------------
------------------------------------------------
console.colors = {
    black       = {  0,   0,   0, 255},
    blue        = {  0,   0, 255, 255},
    cyan        = {  0, 255, 255, 255},
    darkblue    = {  0,   0, 178, 255},
    darkcyan    = {  0, 178, 178, 255},
    darkgreen   = {  0, 178,   0, 255},
    darkpurple  = {178,   0, 178, 255},
    darkred     = {178,   0,   0, 255},
    darkyellow  = {178, 178,   0, 255},
    default     = {178,  32, 255, 255},
    gray        = {178, 178, 178, 255},
    green       = {  0, 255,   0, 255},
    purple      = {255,   0, 255, 255},
    red         = {255,   0,   0, 255},
    white       = {255, 255, 255, 255},
    yellow      = {255, 255,   0, 255},
    cursorg     = {  0, 255,  32, 120},
}

-- bound colors
console.colors.command    = console.colors.default -- foreground for current command
console.colors.commandbg  = 0                      -- background for current command
console.colors.cursor     = console.colors.cursorg -- color for the cursor
console.colors.foreground = console.colors.default -- default foreground color
console.colors.background = 0                      -- background of nil won't draw anything
console.colors.error      = console.colors.red     -- default foreground for errors
console.colors.errorbg    = 0                      -- default background for errors
console.colors.backdrop   = {0,0,0,178}            -- backdrop, the color behind the text
console.colors.border     = console.colors.white   -- border to the console
console.colors.line       = console.colors.white   -- line which seperates console output from input
console.colors.hud_motd   = console.colors.default -- message of the day display
console.colors.hud_debug  = console.colors.default -- debug display
console.colors.hud_close  = console.colors.default -- close message when old console is opened

console.colors.get = function(color, default)
    if color == nil then
        return default
    end

    if type(color) == "table" then
        if #color == 3 then
            table.insert(color, 255)
        elseif #color ~= 4 then
            error("Color must be a table of 3 or 4 numbers")
            return default
        end
        
        return color
    end

    c = console.colors[color]

    if c == nil then
        error("Unknown color '" .. color .. "'")
        return default
    end

    return c
end

------------------------------------------------
-- console.keys --------------------------------
------------------------------------------------
console.keys = {
    binds = {},
    numbers = {},
    symbols = {},
    modifiers = {},
    
    -- key information
    lastkey = 0,
    lastmod = 0,
    lastks = 0,     -- Last key pressed (as string)
    lastpks = 0,    -- Last key pressed (processed)
    
    down = 0,
    downstart = 0,
    repeatDelay = 0.5,
    repeatTimer = 0.02,
    
    pressedvkey = {},
}

console.keys.vkey = {
    shift       = 0x001,
    shift_left  = 0x002,
    shift_right = 0x004,
    ctrl        = 0x008,
    ctrl_left   = 0x010,
    ctrl_right  = 0x020,
    alt         = 0x040,
    alt_left    = 0x080,
    alt_right   = 0x100,
    caps_lock   = 0x200,
    shift_lock  = 0x400,
    num_lock    = 0x800,
}

console.keys.isvkeydown = function(self, search)
    if type(search) == "table" then
        matched = 0
        for i=1,#search do
            if self.pressedvkey[search[i]] == true then
                matched = matched + 1
            end
        end
        return matched == #search
    end
    
    return self.pressedvkey[search] == true
end

console.keys.default = function(self)
    self:clear()
    
    -- Shifted Numbers Map
    self.numbers = {")", "!", "@", "#", "$", "%", "^", "&", "*", "("}
    
    -- Shifted Symbols Map
    self.symbols["-"] = "_"
    self.symbols["="] = "+"
    self.symbols["["] = "{"
    self.symbols["]"] = "}"
    self.symbols[";"] = ":"
    self.symbols["'"] = "\""
    self.symbols[","] = "<"
    self.symbols["."] = ">"
    self.symbols["/"] = "?"
    self.symbols["\\"] = "|"
    
    -- Modifier key map
    -- No bind is -1
    self.modifiers = {
        {  1, self.vkey.shift, self.vkey.shift_left},
        {  2, self.vkey.shift, self.vkey.shift_right},
        { 64, self.vkey.ctrl , self.vkey.ctrl_left},
        {128, self.vkey.ctrl , self.vkey.ctrl_right},
        {256, self.vkey.alt  , self.vkey.alt_left},
        {512, self.vkey.alt  , self.vkey.alt_left},
        {8192, self.vkey.caps_lock}
    }
    
    -- Set binds
    -- -1   Called on ANY key mod (only when no other key mod bind exists)
    -- -2   Always called when button is pressed
    self:bind(8, -1, function() console.command:deleteback() end)   --  Backspace
    self:bind(8, self.vkey.ctrl, function() console.command:clear() end)   --  Ctrl+Backspace
    self:bind(13, -1, function() console.command:run() end)     --  Enter
    self:bind(27, -1, function() console.set(0) end)            --  Esc
    self:bind(96, -1, function() console.set(0) end)            --  ` - Console Key
    self:bind(127, -1, function() console.command:deleteforward() end) --  Delete
    self:bind(273, -1, function() console.history:next() end)   --  Up
    self:bind(274, -1, function() console.history:prev() end)   --  Down
    self:bind(275, -1, function() console.command:right() end)  --  Right
    self:bind(276, -1, function() console.command:left() end)   --  Left
    self:bind(278, -1, function() console.screen:left() end)    --  Home
    self:bind(279, -1, function() console.screen:right() end)   --  End
    self:bind(280, -1, function() console.screen:up() end)      --  Page Up
    self:bind(281, -1, function() console.screen:down() end)    --  Page Down
end

-- default keys should work for US style keyboards
console.keys.us = console.keys.default

console.keys.clear = function(self)
    self.binds = {}
    self.numbers = {}
    self.symbols = {}
    self.modifiers = {}
end

-- Repeat the key if held down for longer than 0.5 seconds
console.keys.heldkey = function(self)
    if self.down == 1 then
        if os.clock() - self.downstart > self.repeatDelay then
            self.down = 2
        end
    end
    if self.down == 2 and (os.clock() - self.downstart) > self.repeatTimer then
        downstart = os.clock()
        console.keys:process(self.lastks, self.lastkey, self.lastmod, 3)

        -- HACK: down is set within console.keys.process, set it back to 2
        self.down = 2
    end
end

console.keys.bind = function(self, key, modifier, func)
    if self.binds[key] == nil then
        self.binds[key] = {}
    end
    
    self.binds[key][modifier] = func
end

console.keys.callbind = function(self, bind, vkey)
    for i,v in pairs(bind) do
        if self:isvkeydown(i) then
            v()
            return
        end
    end
    
    f = bind[-1]
    
    if f ~= nil then
        f()
    end
end

console.keys.process = function(self, keyString, key, modifier, event)
    self.lastkey = key
    self.lastks = keyString
    self.lastpks = keyString
    
    self.down = 2 - event
    self.downstart = os.clock()
    
    -- Handle keys closing old console
    if console.active == 2 and (key == 96 or key == 27) then
        console.active = 0
    end
    
    -- Update key modifier
    if self.lastmod ~= modifier then
        self.pressedvkey = {}
        
        if modifier ~= 0 then
            for i=1,#self.modifiers do
                m = self.modifiers[i]
                f = m[1]
                
                if modifier % (2*f) >= f then
                    for ii=2,#m do
                        if self.pressedvkey[m[ii]] ~= true then
                            self.pressedvkey[m[ii]] = true
                        end
                    end
                end
            end
        end
    end
    self.lastmod = modifier

    -- Override keys
    if console.active == 0 and event == 1 then
        -- ` - Console Key
        if key == 96 then
            if console.active == 0 and (modifier == 1 or modifier == 2) then
                console.old.open()
                return false
            end

            console.toggle()        
            return false
        end

        -- d - Debug Mode
        if key == 100 and event == 1 then
            console.debugmode = 1 - console.debugmode
        end

        -- h - Hud Toggle
        if key == 104 and event == 1 then
            tpt.hud(1 - console.old.hud_value)
            return false
        end
    end
    
    if console.active == 1 then
        if event == 2 then
            return false
        end

        -- Execute bind for key
        bind = self.binds[key]
        
        if bind ~= nil then
            self:callbind(bind, self.pressedvkey)
            return false
        end
        
        -- Ignore any special keys
        if key >= 256 then
            return false
        end

        -- Mappings for shifted keys
        if modifier == 1 or modifier == 2 then
            if key >= 48 and key <= 57 then
                keyString = self.numbers[key - 47]
            elseif key >= 97 and key <= 122 then
                keyString = string.char(key - 97 + 65)
            else
                local temp = self.symbols[keyString]
                
                if temp ~= nil then
                    keyString = temp
                end
            end
        end
        
        console.command:writechar(keyString)
        return false
    end
end

------------------------------------------------
-- console.history -----------------------------
------------------------------------------------
console.history = {
    contents = {},
    maxsize = 30,
    size = 0,
}

console.history.store = function(self, value)
    self.size = self.size + 1
    table.insert(self.contents, 1, value)
    self.selected = 0
end

console.history.next = function(self)
    if self.size == 0 then
        return
    end
    self.selected = self.selected + 1

    if self.selected > self.size then
        self.selected = 1
    end

    console.command:set(self.contents[self.selected])
end

console.history.prev = function(self)
    if self.size == 0 then
        return
    end
    self.selected = self.selected - 1

    if self.selected <= 0 then
        self.selected = self.size
    end

    console.command:set(self.contents[self.selected])
end

console.history.select = function(self, n)
    if self.size == 0 then
        return
    end

    n = n%self.size
    print(n)
    self.selected = (self.selected + n)

    print(self.selected)
    console.command:set(self.contents[self.selected])
end

------------------------------------------------
-- console.quick -------------------------------
------------------------------------------------
local function console_quick_help()
    print("!cls                   - Clear screen")
    print("!color [name] <color>  - Set color class to specified color")
    print("!cursor [name]         - set current cursor to cursor specified")
    print("!e <text>              - Echo text")
    print("!r <file>              - Run a file")
    print("!help                  - Display this text")
end

console.quick[""] = console_quick_help
console.quick["help"] = console_quick_help

console.quick["e"] = console.buffer.writeln
console.quick["cls"] = console.clear
console.quick["cursor"] = console.screen.setcursor

console.quick["color"] = function(arguments)
    args = string.split(arguments, " ")

    if #args == 1 then
        name = "foreground"
        color = args[1]
    elseif #args == 2 then
        name = args[1]
        color = args[2]
    else
        error("!color [name] <color>")
        return
    end

    c = string.split(color,",")
    
    if #c == 1 then
        if color == "nil" then
            console.colors[name] = 0
            return
        end

        c = console.colors.get(color)
        
        if c == nil then
            return
        end
    elseif #c == 3 or #c == 4 then
        alpha = 255

        if #c == 4 then
            alpha = tonumber(c[4])
        end
        
        c = {
            tonumber(c[1]),
            tonumber(c[2]),
            tonumber(c[3]),
            alpha
        }
    end

    console.colors[name] = c
end

-- Function for running a file named filename or filename.lua
console.quick["r"] = function(filename)
    if string.sub(filename, -4) ~= ".lua" then
        f, msg = io.open(filename, "r")

        if not f then
            f, msg = io.open(filename .. ".lua", "r")
            if f then
                f:close()
                return dofile(filename .. ".lua")
            end
        else
            f:close()
        end
    end
    return dofile(filename)
end 

------------------------------------------------
-- LETS DO THIS! -------------------------------
------------------------------------------------
local function keyHandler(keyString, key, modifier, event)
    return console.keys:process(keyString, key, modifier, event)
end

motd = 1
motdstart = 0

local function mouseHandler(mousex, mousey, button, event)
    if motd == 1 then
        motdstart = os.clock()
        motd = 0
    end

    if console.active == 1 then
        return false
    end
    
    return true
end

local function draw()
    if console.active == 1 then
        console.keys:heldkey()
        console.screen:draw()
    end

    if motd == 1 then
        alpha = 1
    else
        alpha = 1 - (os.clock() - motdstart)
    end
    
    if alpha ~= 0 then
        c = console.colors.hud_motd
        tpt.drawtext(15, 335, "The all lua-console V" .. console.version .. " by devast8a is installed!", c[1], c[2], c[3], c[4] * alpha)
    end
        
    if console.debugmode == 1 then
        x = 16
        y = 27

        c = console.colors.hud_debug
        if console.old.hud_value == 1 then
            tpt.drawtext(16, 27, "lua-console (V" .. console.version .. ") (" .. console.keys.lastkey .. ")", c[1], c[2], c[3], c[4])
        end
        if console.active == 1 then
            tpt.drawtext(575, 8, "[" .. console.keys.lastkey .. "]", c[1], c[2], c[3], c[4])
        end
    end

    if console.active == 2 then
        c = console.colors.hud_close
        tpt.drawtext(5, 228, "Old console [Press escape to close] -- lua-console", c[1], c[2], c[3], c[4])
    end
end

tpt.register_step(draw)
tpt.register_keypress(keyHandler)
tpt.register_mouseclick(mouseHandler)

console.old.log("lua-console loaded successfully")

tpt.log("The all lua-console V" .. console.version)
tpt.log("  by devast8a")
tpt.log("")
tpt.log("Page Up/Down - move console screen up/down")
-- Home/End - move console left/right (Only useful when buffer is larger than screen)
tpt.log("Up/Down - cycle through command history")
tpt.log("")
tpt.log("Commands starting with ! don't work, instead close this console")
tpt.log(" and press shift + console key to use the old console.")

------------------------------------------------
-- Last initialization steps -------------------
------------------------------------------------
console.keys:us() -- keyboard mapping