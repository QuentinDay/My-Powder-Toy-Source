
--RCA's HUD
--Please use cracker64's script manager
--VER 13 UPDATE {Not Available At Current Time}
 
--Version 13
 
print("RCA's HUD")
print("Version XIII")
print("Have Fun!")

local rclr, gclr, bclr = 0, 255, 165
local rSlider, gSlider, bSlider, rtext, btext, gtext
local defaultc, purplec, turquoisec
local coloruw

if not tpt.version.jacob1s_mod then --support jacob1's mod (jacob1 edit)
--Windows
local window1 = Window:new(-1, -1, 611, 383)
local creditw = Window:new(-1, -1, 611, 383)
local infow = Window:new(-1, -1, 611, 383)
colourw = Window:new(-1, -1, 611, 383)
local messagew = Window:new(-1, -1, 611, 383)

--Texts
local creditsttl = Label:new(270, 1, 50, 15, "CREDITS")
local creditstxt = Label:new(1, 20, 611, 15, "Jacob1, Cracker 64, and the knowledge gained from all Lua programmers in TPT.")
local infotxt = Label:new(1, 20, 611, 15, "How to use RCA's HUD (XII):")
local instructions = Label:new(1, 40, 611, 15, "To turn the HUD on or off, use the < and > keys on your keyboard.")
local instructions2 = Label:new(1, 60, 611, 15, "To turn on or off the extra level of the HUD (TMP2, VX, VY) use the + and - keys.") 
local instructions3 = Label:new(1, 80, 611, 15, "Pressing the M key will engage Realistic Mode. Every five frames WTRV is turned into DSTW")
local instructions4 = Label:new(1, 90, 611, 15, "and all pixels are reset to normal temp. Restart TPT to reset.")
local rca = Label:new(500, 5, 100, 15, "RCA Production (2014)")
rtext = Label:new(275, 10, 50, 15)
rtext:text("0")
gtext = Label:new(275, 40, 50, 15)
gtext:text("255")
btext = Label:new(275, 70, 50, 15)
btext:text("165")
local redl = Label:new(325, 10, 50, 15, "Red")
local greenl = Label:new(325, 40, 50, 15, "Green")
local bluel = Label:new(325, 70, 50, 15, "Blue")
local messageText = Label:new(5, 5, 611, 15, "Hallo Sam. Jeg elsker deg... Du er veldig vakker... Jeg er forelsket.")

--Red Slider
rSlider = Slider:new(10, 10, 255, 15, 255)
rSlider:value(0)
--Green Slider
gSlider = Slider:new(10, 40, 255, 15, 255)
gSlider:value(255)
--Blue Slider
bSlider = Slider:new(10, 70, 255, 15, 255)
bSlider:value(165)

--Checkbox Default
defaultc = Checkbox:new(10, 100, 10, 10, "Default")
defaultc:checked(false)
--Checkbox Purple
purplec = Checkbox:new(10, 120, 10, 10, "Purple")
purplec:checked(false)
--Checkbox Turquoise
turquoisec = Checkbox:new(10, 140, 10, 10, "Turquoise")
turquoisec:checked(false)

--Credits Button
local credits = Button:new(5, 5, 50, 15, "Credits")
credits:action(function() ui.showWindow(creditw) end)
--Close Credits Button
local close2 = Button:new(508, 365, 100, 15, "Close Credits")
close2:action(function() ui.closeWindow(creditw) end)
--Info Button
local info = Button:new(5, 25, 50, 15, "Info")
info:action(function() ui.showWindow(infow) end)
--Close Info Button
local close3 = Button:new(508, 365, 100, 15, "Close Info")
close3:action(function() ui.closeWindow(infow) end)
--Colour Button
local colourButton = Button:new(5, 45, 50, 15, "Colours")
colourButton:action(function() ui.showWindow(colourw) end)
--Close Colour Window
local closeColour = Button:new(508, 365, 100, 15, "Close Colours")
closeColour:action(function() ui.closeWindow(colourw) end)
--Message
local message = Button:new(5, 65, 50, 15, "Message")
message:action(function() ui.showWindow(messagew) end)
--Close Message
local messagec = Button:new(508, 365, 100, 15, "Close Message")
messagec:action(function() ui.closeWindow(messagew) end)

--I Button
local infoButton = Button:new(597, 1, 15, 15, "I", "Info about RCA's HUD - Extras")
infoButton:visible(false)
infoButton:action(function() ui.showWindow(window1) end)
--Exit Button
local enterButton = Button:new(558, 365, 50, 15, "Exit")
enterButton:action(function() ui.closeWindow(window1) end)
--C Button
local closeButton = Button:new(597, 97, 15, 15, "C", "Close")
closeButton:visible(false)
closeButton:action(function() infoButton:visible(false) closeButton:visible(false) end)

--E Button
local extraButton = Button:new(613, 97, 15, 15, "E", "Extra Menu - Elements - Info")
extraButton:action(function() infoButton:visible(true) closeButton:visible(true) end)

window1:addComponent(rca)
window1:addComponent(enterButton)
window1:addComponent(credits)
window1:addComponent(info)
window1:addComponent(colourButton)
window1:addComponent(message)

creditw:addComponent(close2)
creditw:addComponent(creditsttl)
creditw:addComponent(creditstxt)

infow:addComponent(infotxt)
infow:addComponent(close3)
infow:addComponent(instructions)
infow:addComponent(instructions2)
infow:addComponent(instructions3)
infow:addComponent(instructions4)
    
colourw:addComponent(rSlider)
colourw:addComponent(rtext)
colourw:addComponent(closeColour)
colourw:addComponent(gSlider)
colourw:addComponent(bSlider)
colourw:addComponent(gtext)
colourw:addComponent(btext)
colourw:addComponent(redl)
colourw:addComponent(greenl)
colourw:addComponent(bluel)
colourw:addComponent(purplec)
colourw:addComponent(defaultc)
colourw:addComponent(turquoisec)

messagew:addComponent(messagec)
messagew:addComponent(messageText)

ui.closeWindow(window1)
ui.closeWindow(creditw)
ui.addComponent(extraButton)
ui.addComponent(infoButton)
ui.addComponent(closeButton)

end

hudon = true
hudon2 = false

function keyclicky(key, nkey, modifier, event)
    if (key == "." and event == 1) then 
        hudon = true
    end
    if (key == "," and event == 1) then
        hudon = false
    end
    if (key == "=" and event == 1) then
        hudon2 = true
    end
    if (key == "-" and event == 1) then
        hudon2 = false
    end
end
    
tpt.register_keypress(keyclicky) 

function DrawHUD()      
    if hudon == true then
        vis1 = 200
    else
        vis1 = 0
    end
    if hudon2 == true then
        vis2 = 200
    else
        vis2 = 0
    end
    if tpt.mousex >= 611 then 
        x2 = 611
    else
        x2 = tpt.mousex
    end
    
    if tpt.mousey >= 383 then
        y2 = 383
    else
        y2 = tpt.mousey
    end
    
    local x, y = sim.adjustCoords(x2, y2)
    
    if tpt.get_property("type", x, y) >= 1 then
        ptype = tpt.element(tpt.get_property("type", x, y))
    else
        ptype = "Empty,"
    end
    
    if tpt.get_property("type", x, y) == 6 and tpt.get_property("ctype", x, y) >= 1 then
        ptype = "Molten"
    end
    
    if tpt.get_property("type", x, y) >= 1 then
        var1 = tpt.get_property("temp", x, y)-273.15
    else
        var1 = 293.15
    end
    
    local var2 = var1*100
    local var3 = math.floor(var2)/100 
    
    if tpt.get_property("type", x, y) >= 1 then
        temp = var3
    else
        temp = "()"
    end
    
    if tpt.get_property("type", x, y) >= 1 then
        tempb = var3
    else
        tempb = 21.99
    end
    
    if tpt.get_property("type", x, y) >= 1 then
        temp2 = math.floor(tpt.get_property("temp", x, y)*10)/10
    else
        temp2 = "()"
    end
    
    if tpt.get_property("type", x, y) >= 1 then 
        var12312389 = tpt.get_property("ctype", x, y) 
    end
    
    if tpt.get_property("type", x, y) >= 1 and var12312389 >= 0 and var12312389 < sim.PT_NUM then 
        ctype = tpt.element(tpt.get_property("ctype", x, y))
    end
    
    if tpt.get_property("type", x, y) == 0 or tpt.get_property("ctype", x, y) < 1 then 
        ctype = "()"
    end
    
    if x >= 609 then 
        x1 = 609/4
    else
        x1 = x/4
    end
    
    if y >= 381 then 
        y1 = 381/4
    else
        y1 = y/4
    end
    
    local var4 = sim.pressure(x1, y1)*100
    local var14 = math.floor(var4)/100
    
    if var14 == "nan" then
        pressure = "Infinite"
    else
        pressure = var14
    end

    local parts = tpt.get_numOfParts()
    if tpt.get_property("type", x, y) >= 1 then 
        tmp = tpt.get_property("tmp", x, y)
    else
        tmp = "0"
    end
    
    if tpt.get_property("type", x, y) >= 1 then 
        life = tpt.get_property("life", x, y)
    else
        life = "0"
    end
    
    if tpt.get_property("type", x, y) >= 1 then 
        tmp2 = tpt.get_property("tmp2", x, y)
    else
        tmp2 = "0"
    end
    
    if tpt.get_property("type", x, y) >= 1 then
        var11 = tpt.get_property("vy", x, y)*1000
    else
        var11 = 0
    end
    if var11 <= 9999 or var11 <= -9999 then 
        vy = math.floor(var11)/1000
    else
        vy = "Err(2)"
    end
    
    if tpt.get_property("type", x, y) >= 1 then
        var12 = tpt.get_property("vx", x, y)*1000
    else
        var12 = 0
    end
    if var12 <= 9999 or var12 <= -9999 then 
        vx = math.floor(var12)/1000
    else
        vx = "Err(1)"
    end
    
    if not tpt.version.jacob1s_mod then
        rclr, gclr, bclr = rSlider:value(), gSlider:value(), bSlider:value()
        rSlider:onValueChanged(function() rclr = rSlider:value() rtext:text(rclr) end)
        gSlider:onValueChanged(function() gclr = gSlider:value() gtext:text(gclr) end)
        bSlider:onValueChanged(function() bclr = bSlider:value() btext:text(bclr) end)
    
        if purplec:checked() == true then
            rclr, gclr, bclr = 164, 95, 255
        end
        
        if defaultc:checked() == true then
            rclr, gclr, bclr = 0, 255, 165
        end
        
        if turquoisec:checked() == true then
            rclr, gclr, bclr = 0, 255, 255
        end
        
        colourw:onDraw(function() graphics.fillRect(300, 150, 90, 90, rclr, gclr, bclr) end)
    end

    local draw = graphics.drawText
    local rect = graphics.fillRect
 
    rect(398, 13, 187, 12, 55, 55, 55, vis1)
    rect(398, 27, 200, 12, 55, 55, 55, vis1)
    rect(14, 13, 210, 12, 55, 55, 55, vis1)
    rect(398, 41, 180, 12, 55, 55, 55, vis2)
 
    draw(16, 15, os.date(), rclr, gclr, bclr, vis1)
 
    --draw(250, 6, "</> Turn HUD On/Off", rclr, gclr, bclr, vis3)
    --draw(250, 16, "-/+ Extra On/Off", rclr, gclr, bclr, vis3)
    draw(550, 30, x, rclr, gclr, bclr, vis1)
    draw(578, 30, y, rclr, gclr, bclr, vis1)
    draw(541, 30, "X:", rclr, gclr, bclr, vis1)
    draw(570, 30, "Y:", rclr, gclr, bclr, vis1)
    draw(435, 15, ctype, rclr, gclr, bclr, vis1)
    draw(400, 15, ptype, rclr, gclr, bclr, vis1)
    draw(558, 15, pressure, rclr, gclr, bclr, vis1)
    draw(465, 15, "Temp:", rclr, gclr, bclr, vis1)
    draw(465, 30, "Tmp:", rclr, gclr, bclr, vis1)
    draw(400, 30, "Life:", rclr, gclr, bclr, vis1)
    draw(535, 15, "Pres:", rclr, gclr, bclr, vis1)
    draw(160, 15, "Parts:", rclr, gclr, bclr, vis1)
    draw(490, 15, temp, rclr, gclr, bclr, vis1)
    draw(485, 30, tmp, rclr, gclr, bclr, vis1)
    draw(422, 30, life, rclr, gclr, bclr, vis1)
    draw(187, 15, parts, rclr, gclr, bclr, vis1)

    draw(400, 44, "Tmp2:", rclr, gclr, bclr, vis2)
    draw(426, 44, tmp2, rclr, gclr, bclr, vis2)
    draw(465, 44, "VX:", rclr, gclr, bclr, vis2)
    draw(535, 44, "VY:", rclr, gclr, bclr, vis2)
    draw(480, 44, vx, rclr, gclr, bclr, vis2)
    draw(550, 44, vy, rclr, gclr, bclr, vis2)
    --Useful for programming, shows an element's number (Not name) at mouse X, Y. By default is commented out.
    --draw(550, 54, tpt.get_property("type", x, y), 0, gclr, bclr, 200)
    
    --Temperature Colour Graph
    local dx = ((tempb-1550)/50)
    if dx >= 39 then
        ddx = 565
        visb = 255
        dddx = (dx-39)+490
    else
        ddx = dx+526
        visb = 0
        dddx = 1
    end

    if dddx >= 565 then
        ddddx = dddx-75
        dddx = 565
        visbb = 255
    else
        ddddx = 1
        visbb = 0
        end
    if tempb >=-290 then
        tpt.drawpixel(490, 25, 80, 54, 254, vis1)
    end
    if tempb >= -250 then
        tpt.drawpixel(491, 25, 60, 54, 254, vis1)
    end
    if tempb >= -200 then
        tpt.drawpixel(492, 25, 60, 74, 254, vis1)
    end
    if tempb >= -150 then
        tpt.drawpixel(493, 25, 60, 94, 254, vis1)
    end
    if tempb >= -100 then
        tpt.drawpixel(494, 25, 60, 114, 254, vis1)
    end
    if tempb >= -50 then
        tpt.drawpixel(495, 25, 60, 134, 254, vis1)
    end
    if tempb >= 0 then
        tpt.drawpixel(496, 25, 60, 153, 254, vis1)
    end
    if tempb >= 50 then
        tpt.drawpixel(497, 25, 60, 154, 234, vis1)
    end
    if tempb >= 100 then
        tpt.drawpixel(498, 25, 60, 174, 234, vis1)
    end
    if tempb >= 150 then
        tpt.drawpixel(499, 25, 60, 194, 234, vis1)
    end
    if tempb >= 200 then
        tpt.drawpixel(500, 25, 60, 214, 234, vis1)
    end
    if tempb >= 250 then
        tpt.drawpixel(501, 25, 60, 234, 234, vis1)
    end
    if tempb >= 300 then
        tpt.drawpixel(502, 25, 60, 254, 234, vis1)
    end
    if tempb >= 350 then
        tpt.drawpixel(503, 25, 60, 254, 214, vis1)
    end
    if tempb >= 400 then
        tpt.drawpixel(504, 25, 60, 254, 94, vis1)
    end
    if tempb >= 450 then
        tpt.drawpixel(505, 25, 60, 254, 74, vis1)
    end
    if tempb >= 500 then
        tpt.drawpixel(506, 25, 60, 254, 54, vis1)
    end
    if tempb >= 550 then
        tpt.drawpixel(507, 25, 80, 254, 54, vis1)
    end
    if tempb >= 600 then
        tpt.drawpixel(508, 25, 100, 254, 54, vis1)
    end
    if tempb >= 650 then
        tpt.drawpixel(508, 25, 120, 254, 54, vis1)
    end
    if tempb >= 750 then
        tpt.drawpixel(509, 25, 140, 254, 54, vis1)
    end
    if tempb >= 800 then
        tpt.drawpixel(510, 25, 160, 254, 54, vis1)
    end
    if tempb >= 850 then
        tpt.drawpixel(511, 25, 180, 254, 54, vis1)
    end
    if tempb >= 900 then
        tpt.drawpixel(512, 25, 200, 254, 54, vis1)
    end
    if tempb >= 950 then
        tpt.drawpixel(513, 25, 220, 254, 54, vis1)
    end
    if tempb >= 1000 then
        tpt.drawpixel(514, 25, 240, 254, 54, vis1)
    end
    if tempb >= 1050 then
        tpt.drawpixel(515, 25, 254, 254, 54, vis1)
    end
    if tempb >= 1100 then
        tpt.drawpixel(516, 25, 254, 254, 54, vis1)
    end
    if tempb >= 1150 then
        tpt.drawpixel(517, 25, 254, 214, 54, vis1)
    end
    if tempb >= 1200 then
        tpt.drawpixel(518, 25, 254, 194, 54, vis1)
    end
    if tempb >= 1250 then
        tpt.drawpixel(519, 25, 254, 174, 54, vis1)
    end
    if tempb >= 1300 then
        tpt.drawpixel(520, 25, 254, 154, 54, vis1)
    end
    if tempb >= 1350 then
        tpt.drawpixel(521, 25, 254, 134, 54, vis1)
    end
    if tempb >= 1400 then
        tpt.drawpixel(522, 25, 254, 114, 54, vis1)
    end
    if tempb >= 1450 then
        tpt.drawpixel(523, 25, 254, 94, 54, vis1)
    end
    if tempb >= 1500 then
        tpt.drawpixel(524, 25, 254, 74, 54, vis1)
    end
    if tempb >= 1550 then
        tpt.drawpixel(525, 25, 254, 54, 54, vis1)
    end
    if tempb >= 1600 then
        graphics.drawLine(526, 25, ddx, 25, 255, 0, 0, vis1)
    end
    graphics.drawLine(490, 26, dddx, 26, 255, 0, 0, visb)
    graphics.drawLine(490, 27, ddddx, 27, 255, 0, 0, visbb)
end

tpt.hud(0)
 
tpt.register_step(DrawHUD)


function keyclicky(key, nkey, modifier, event)
    if (key == "m" and event == 1) then 
        rtemp = 1
    end
end
    
tpt.register_keypress(keyclicky)

local counter = 0
function resettemp()
    counter = (counter + 1)%5
    if counter == 0 and rtemp == 1 then
        sim.resetTemp()
        tpt.set_property("temp", 293.15, "wtrv")
        warning = 1
    end
    
    if warning == 1 then
        graphics.fillRect(14, 27, 219,12, 55, 55, 55, 200)
        graphics.drawText(16, 29, "Realistic Mode Enabled (M) Restart To Reset", 0, 255, 165, 200)
    end
end
tpt.register_step(resettemp)