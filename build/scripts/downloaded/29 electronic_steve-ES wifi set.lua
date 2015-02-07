
local  function ESWifiSet()
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
    local x,y=sim.adjustCoords(x2,y2)
    channel = tpt.input("Enter a Channel Number.", "Must Be Between 0 and 100")
    tpt.set_property("temp", channel*100 + 23.15, x,y) --Credits by Jacob1
end
   
   
local  function ESWifiSetKeyTest(k)
    if k == "," then  ESWifiSet() end 
end
tpt.register_keypress(ESWifiSetKeyTest)

local function ESWifiTest()
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
    local x,y=sim.adjustCoords(x2,y2)

    if tpt.get_property("type", x,y)>0 then 
        local etype=tpt.element(tpt.get_property("type", x,y))
        if etype=="WIFI" or etype=="PRTO" or etype=="PRTI" then 
            graphics.fillRect(tpt.mousex-tpt.textwidth(tpt.get_property("tmp", x,y))/2-3,tpt.mousey-13,tpt.textwidth(tpt.get_property("tmp", x,y))+6,11,0,0,0,100)
            graphics.drawText(tpt.mousex-tpt.textwidth(tpt.get_property("tmp", x,y))/2,tpt.mousey-10,tpt.get_property("tmp", x,y))
        end
    end
end 
tpt.register_step(ESWifiTest)