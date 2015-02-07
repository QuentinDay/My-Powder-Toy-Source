local table={}
 table[1]={name="nnnooo",drawfunc=function(x,y) end,func=function(n1,n2,n3,n4,n5) print(n1) end}
 tableselect=1
 menurender=0
 EST3recte=false
 ESTdublepressfix=false
 
local function keyTester(key_char)
if key_char=="." then ESTdublepressfix=not ESTdublepressfix if ESTdublepressfix then tableselect=miax(1,tableselect+1,#table)   menurender=255  end end
if key_char=="," then ESTdublepressfix=not ESTdublepressfix if ESTdublepressfix then tableselect=miax(1,tableselect-1,#table) menurender=255 end end
if key_char=="/" then ESTdublepressfix=not ESTdublepressfix if ESTdublepressfix then  table[tableselect].func(true) end end
end
function ESTDraw()
table[tableselect].drawfunc()
 
end
tpt.register_step(ESTDraw)
local function ESwindowUpdate()
menurender=menurender-1
tpt.drawrect(606-tpt.textwidth(tableselect.."|"..table[tableselect].name),372,tpt.textwidth(tableselect.."|"..table[tableselect].name)+5,12,menurender,menurender,menurender,menurender)
tpt.drawtext(609-tpt.textwidth(tableselect.."|"..table[tableselect].name),374,tableselect.."|"..table[tableselect].name,menurender,menurender,menurender,menurender)
x,y=realcord(tpt.mousex,tpt.mousey)
-- wifi channel number render
        if tpt.get_property("type", x,y)>0 then
    local etype=tpt.element(tpt.get_property("type", x,y))
                if etype=="WIFI" or etype=="PRTO" or etype=="PRTI" then
                graphics.fillRect(tpt.mousex-tpt.textwidth(tpt.get_property("tmp", x,y))/2-3,tpt.mousey-13,tpt.textwidth(tpt.get_property("tmp", x,y))+6,11,0,0,0,100)
                graphics.drawText(tpt.mousex-tpt.textwidth(tpt.get_property("tmp", x,y))/2,tpt.mousey-10,tpt.get_property("tmp", x,y))
        end
    end
end
 
 
 
tpt.register_step(ESwindowUpdate)
tpt.register_keypress(keyTester)
--tools!
table[2]={
 
name="wifi search",
drawfunc=function(x,y) end,
func=function(n1,n2,n3,n4,n5)
local ESS={}
        for i=1,101 do
        ESS[i]=false
        end
 
        for x=0,611 do
                for y=0,383 do
                        if tpt.get_property("type",x,y)==124  then
                        ESS[tpt.get_property("tmp",x,y)]=true
 
                                for x=1,101 do
                                        if ESS[x] then
                                        tpt.delete(505+x,5)
                                        tpt.create(505+x,5,124)
                                        tpt.set_property("temp", x*100 + 23.15,505+x,5)
                                        end
                                end
                        end
                end
        end
 
end
}
table[3]={
 
 
name="rotate by 90 degrees",
drawfunc=function()
local x,y=realcord(tpt.mousex,tpt.mousey)
        if x>0 and x<511 and
        y>0 and y<283 then
   
 
        tpt.drawrect(x,y,100,100,255,0,0,100)
        end
 end,
func=function(n1,n2,n3,n4,n5)
local x,y=realcord(tpt.mousex,tpt.mousey)
        if x>0 and x<511 and
        y>0 and y<283 then
   
   
 
                for nx=0,100 do
                        for ny=0,100 do
                                for i=1,5 do
                                tpt.set_property("x",x-ny+100,x+nx,y+ny)
                                tpt.set_property("y",y+nx,x+nx,y+ny)
                                end
                        end
                end
        end
end
}
table[4]={
name="wifi set",
drawfunc=function () end,
func=function()
 
 
 
 local x,y=realcord(tpt.mousex,tpt.mousey)
 local channel = tpt.input("Enter a Channel Number.", "Must Be Between 0 and 100")
       tpt.set_property("temp", channel*100 + 23.15, x,y)
 
 
end
}
 
--API
function realcord(x,y)
if x >= 611 then x2 = 611 else x2 = x end
if y >= 383 then y2 = 383 else y2 = y end
    return  sim.adjustCoords(x2,y2)
end
 
function miax(i,m,a)
if   i>=m          then return i
elseif i<m  and m<a then return m
elseif m>=a          then return a end
end
local table = {}
 table[1]={name="nnnooo",drawfunc=function(x,y) end,func=function(n1,n2,n3,n4,n5) print(n1) end}
 tableselect=1
 menurender=0
 EST3recte=false
 ESTdublepressfix=false
 
local function keyTester(key_char)
if key_char=="." then ESTdublepressfix=not ESTdublepressfix if ESTdublepressfix then tableselect=miax(1,tableselect+1,#table)   menurender=255  end end
if key_char=="," then ESTdublepressfix=not ESTdublepressfix if ESTdublepressfix then tableselect=miax(1,tableselect-1,#table) menurender=255 end end
if key_char=="/" then ESTdublepressfix=not ESTdublepressfix if ESTdublepressfix then  table[tableselect].func(true) end end
end
function ESTDraw()
table[tableselect].drawfunc()
 
end
tpt.register_step(ESTDraw)
local function ESwindowUpdate()
menurender=menurender-1
tpt.drawrect(606-tpt.textwidth(tableselect.."|"..table[tableselect].name),372,tpt.textwidth(tableselect.."|"..table[tableselect].name)+5,12,menurender,menurender,menurender,menurender)
tpt.drawtext(609-tpt.textwidth(tableselect.."|"..table[tableselect].name),374,tableselect.."|"..table[tableselect].name,menurender,menurender,menurender,menurender)
x,y=realcord(tpt.mousex,tpt.mousey)
-- wifi channel number render
        if tpt.get_property("type", x,y)>0 then
    local etype=tpt.element(tpt.get_property("type", x,y))
                if etype=="WIFI" or etype=="PRTO" or etype=="PRTI" then
                graphics.fillRect(tpt.mousex-tpt.textwidth(tpt.get_property("tmp", x,y))/2-3,tpt.mousey-13,tpt.textwidth(tpt.get_property("tmp", x,y))+6,11,0,0,0,100)
                graphics.drawText(tpt.mousex-tpt.textwidth(tpt.get_property("tmp", x,y))/2,tpt.mousey-10,tpt.get_property("tmp", x,y))
        end
    end
end
 
 
 
tpt.register_step(ESwindowUpdate)
tpt.register_keypress(keyTester)
--tools!
table[2]={
 
name="wifi search",
drawfunc=function(x,y) end,
func=function(n1,n2,n3,n4,n5)
local ESS={}
        for i=1,101 do
        ESS[i]=false
        end
 
        for x=0,611 do
                for y=0,383 do
                        if tpt.get_property("type",x,y)==124  then
                        ESS[tpt.get_property("tmp",x,y)]=true
 
                                for x=1,101 do
                                        if ESS[x] then
                                        tpt.delete(505+x,5)
                                        tpt.create(505+x,5,124)
                                        tpt.set_property("temp", x*100 + 23.15,505+x,5)
                                        end
                                end
                        end
                end
        end
 
end
}
table[3]={
 
 
name="rotate by 90 degrees",
drawfunc=function()
local x,y=realcord(tpt.mousex,tpt.mousey)
        if x>0 and x<511 and
        y>0 and y<283 then
   
 
        tpt.drawrect(x,y,100,100,255,0,0,100)
        end
 end,
func=function(n1,n2,n3,n4,n5)
local x,y=realcord(tpt.mousex,tpt.mousey)
        if x>0 and x<511 and
        y>0 and y<283 then
   
   
 
                for nx=0,100 do
                        for ny=0,100 do
                                for i=1,5 do
                                tpt.set_property("x",x-ny+100,x+nx,y+ny)
                                tpt.set_property("y",y+nx,x+nx,y+ny)
                                end
                        end
                end
        end
end
}
table[4]={
name="wifi set",
drawfunc=function () end,
func=function()
 
 
 
 local x,y=realcord(tpt.mousex,tpt.mousey)
 local channel = tpt.input("Enter a Channel Number.", "Must Be Between 0 and 100")
       tpt.set_property("temp", channel*100 + 23.15, x,y)
 
 
end
}
 
--API
function realcord(x,y)
if x >= 611 then x2 = 611 else x2 = x end
if y >= 383 then y2 = 383 else y2 = y end
    return  sim.adjustCoords(x2,y2)
end
 
function miax(i,m,a)
if   i>=m          then return i
elseif i<m  and m<a then return m
elseif m>=a          then return a end
end