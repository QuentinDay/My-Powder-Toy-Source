local METR = elements.allocate("ELEMENT", "METR")
elements.element(elements.ELEMENT_PT_METR, elements.element(elements.DEFAULT_PT_ELEC))
elements.property(elements.ELEMENT_PT_METR, "Name", "METR")
elements.property(elements.ELEMENT_PT_METR, "Description", "Meteors, Explode on impact. Use sparingly.")
elements.property(elements.ELEMENT_PT_METR, "Colour", 0xFF7A0002)
elements.property(elements.ELEMENT_PT_METR, "MenuSection", elem.SC_EXPLOSIVE)
elements.property(elements.ELEMENT_PT_METR, "MenuVisible", 1)
elements.property(elements.ELEMENT_PT_METR, "Weight", 100)
elements.property(elements.ELEMENT_PT_METR, "Temperature", 9999)
local function graphics1(i, colr, colg, colb)
    return 1,0x00010000,255,225,0,210,255,255,255,255
end
tpt.graphics_func(graphics1,METR)
 
local function get_property(prop, x, y)
if x >= 0 and x < sim.XRES and y >=0 and y < sim.YRES then
return tpt.get_property(prop, x, y)
 end
    return 0
    end
   
math.randomseed(os.time())
function metr_update(i, x, y, s, n)
        if tpt.get_property("tmp",i)==0 then
                tpt.parts[i].tmp=1
                randvel=math.random(-20,20)/10
                tpt.parts[i].vx=randvel
                tpt.parts[i].vy=math.sqrt(8-(randvel^2))
        end
 
        xvel=tpt.get_property("vx",i)/2
        yvel=tpt.get_property("vy",i)/2
        if yvel <= 0 or math.abs(xvel) > 1 then
                tpt.delete(i)
        end
 
        xpos=x-xvel
        ypos=y-yvel
        elemtype=get_property("type",xpos,ypos)
       
        if elemtype == 0 then
                tpt.create(xpos,ypos,"bray")
                tpt.set_property("temp",5000,xpos,ypos)
        end
        tpt.parts[i].temp=9999
 
        elemtype25=get_property("type",x+xvel*5,y+yvel*5)
        elemtype24=get_property("type",x+xvel*4,y+yvel*4)
        elemtype23=get_property("type",x+xvel*3,y+yvel*3)
        elemtype22=get_property("type",x+xvel*2,y+yvel*2)
        elemtype21=get_property("type",x+xvel,y+yvel)
        if elemtype25 ~= 0 and elemtype25 ~= elements.ELEMENT_PT_METR and elemtype25 ~= tpt.el.bray.id and elemtype25 ~= tpt.el.dmnd.id and elemtype25 ~= tpt.el.void.id then
                tpt.set_property("type","bomb",i)
                tpt.set_property("life",0,i)
                tpt.set_property("tmp",0,i)
        elseif elemtype24 ~= 0 and elemtype24 ~= elements.ELEMENT_PT_METR and elemtype24 ~= tpt.el.bray.id and elemtype24 ~= tpt.el.dmnd.id and elemtype24 ~= tpt.el.void.id then
                tpt.set_property("type","bomb",i)
                tpt.set_property("life",0,i)
                tpt.set_property("tmp",0,i)
        elseif elemtype23 ~= 0 and elemtype23 ~= elements.ELEMENT_PT_METR and elemtype23 ~= tpt.el.bray.id and elemtype23 ~= tpt.el.dmnd.id and elemtype23 ~= tpt.el.void.id then
                tpt.set_property("type","bomb",i)
                tpt.set_property("life",0,i)
                tpt.set_property("tmp",0,i)
        elseif elemtype22 ~= 0 and elemtype22 ~= elements.ELEMENT_PT_METR and elemtype22 ~= tpt.el.bray.id and elemtype22 ~= tpt.el.dmnd.id and elemtype22 ~= tpt.el.void.id then
                tpt.set_property("type","bomb",i)
                tpt.set_property("life",0,i)
                tpt.set_property("tmp",0,i)
        elseif elemtype21 ~= 0 and elemtype21 ~= elements.ELEMENT_PT_METR and elemtype21 ~= tpt.el.bray.id and elemtype21 ~= tpt.el.dmnd.id and elemtype21 ~= tpt.el.void.id then
                tpt.set_property("type","bomb",i)
                tpt.set_property("life",0,i)
                tpt.set_property("tmp",0,i)
        end
                end
 
tpt.element_func(metr_update, elements.ELEMENT_PT_METR,1)

local MRTL = elements.allocate("ELEMENT", "MRTL")
elements.element(elements.ELEMENT_PT_MRTL, elements.element(elements.DEFAULT_PT_ELEC))
elements.property(elements.ELEMENT_PT_MRTL, "Name", "MRTL")
elements.property(elements.ELEMENT_PT_MRTL, "Description", "Motar Left.")
elements.property(elements.ELEMENT_PT_MRTL, "Colour", 0xFF5068E4)
elements.property(elements.ELEMENT_PT_MRTL, "MenuSection", elem.SC_EXPLOSIVE)
elements.property(elements.ELEMENT_PT_MRTL, "MenuVisible", 1)
elements.property(elements.ELEMENT_PT_MRTL, "Weight", 100)
elements.property(elements.ELEMENT_PT_MRTL, "Temperature", 9999)
local function graphics1(i, colr, colg, colb)
    return 1,0x00010000,255,225,0,210,255,255,255,255
end
tpt.graphics_func(graphics1,MRTL)
 
local function get_property(prop, x, y)
    if x >= 0 and x < sim.XRES and y >=0 and y < sim.YRES then
        return tpt.get_property(prop, x, y)
    end
    return 0
end
 
math.randomseed(os.time())
function MRTL_update(i, x, y, s, n)
    if tpt.get_property("tmp",i)==0 then
        tpt.parts[i].tmp=1
                --randvel=math.random(-20,20)/10
                tpt.parts[i].vx=-3
                tpt.parts[i].vy=3
            end
 
            xvel=-3
            yvel=3
            if math.abs(xvel) < 1 then
                tpt.delete(i)
            end
 
            xpos=x-xvel
            ypos=y-yvel
            elemtype=get_property("type",xpos,ypos)
 
            if elemtype == 0 then
                tpt.create(xpos,ypos,"bray")
                tpt.set_property("temp",5000,xpos,ypos)
            end
            tpt.parts[i].temp=9999
 
            elemtype25=get_property("type",x+xvel*5,y+yvel*5)
            elemtype24=get_property("type",x+xvel*4,y+yvel*4)
            elemtype23=get_property("type",x+xvel*3,y+yvel*3)
            elemtype22=get_property("type",x+xvel*2,y+yvel*2)
            elemtype21=get_property("type",x+xvel,y+yvel)
            if elemtype25 ~= 0 and elemtype25 ~= elements.ELEMENT_PT_MRTL and elemtype25 ~= tpt.el.bray.id and elemtype25 ~= tpt.el.dmnd.id and elemtype25 ~= tpt.el.void.id then
                tpt.set_property("type","bomb",i)
                tpt.set_property("life",0,i)
                tpt.set_property("tmp",0,i)
                elseif elemtype24 ~= 0 and elemtype24 ~= elements.ELEMENT_PT_MRTL and elemtype24 ~= tpt.el.bray.id and elemtype24 ~= tpt.el.dmnd.id and elemtype24 ~= tpt.el.void.id then
                    tpt.set_property("type","bomb",i)
                    tpt.set_property("life",0,i)
                    tpt.set_property("tmp",0,i)
                    elseif elemtype23 ~= 0 and elemtype23 ~= elements.ELEMENT_PT_MRTL and elemtype23 ~= tpt.el.bray.id and elemtype23 ~= tpt.el.dmnd.id and elemtype23 ~= tpt.el.void.id then
                        tpt.set_property("type","bomb",i)
                        tpt.set_property("life",0,i)
                        tpt.set_property("tmp",0,i)
                        elseif elemtype22 ~= 0 and elemtype22 ~= elements.ELEMENT_PT_MRTL and elemtype22 ~= tpt.el.bray.id and elemtype22 ~= tpt.el.dmnd.id and elemtype22 ~= tpt.el.void.id then
                            tpt.set_property("type","bomb",i)
                            tpt.set_property("life",0,i)
                            tpt.set_property("tmp",0,i)
                            elseif elemtype21 ~= 0 and elemtype21 ~= elements.ELEMENT_PT_MRTL and elemtype21 ~= tpt.el.bray.id and elemtype21 ~= tpt.el.dmnd.id and elemtype21 ~= tpt.el.void.id then
                                tpt.set_property("type","bomb",i)
                                tpt.set_property("life",0,i)
                                tpt.set_property("tmp",0,i)
                            end
                        end
 
                        tpt.element_func(MRTL_update, elements.ELEMENT_PT_MRTL,1)

                        local MRTR = elements.allocate("ELEMENT", "MRTR")
elements.element(elements.ELEMENT_PT_MRTR, elements.element(elements.DEFAULT_PT_ELEC))
elements.property(elements.ELEMENT_PT_MRTR, "Name", "MRTR")
elements.property(elements.ELEMENT_PT_MRTR, "Description", "Mortar Right.")
elements.property(elements.ELEMENT_PT_MRTR, "Colour", 0xFF2E01E3)
elements.property(elements.ELEMENT_PT_MRTR, "MenuSection", elem.SC_EXPLOSIVE)
elements.property(elements.ELEMENT_PT_MRTR, "MenuVisible", 1)
elements.property(elements.ELEMENT_PT_MRTR, "Weight", 100)
elements.property(elements.ELEMENT_PT_MRTR, "Temperature", 9999)
local function graphics1(i, colr, colg, colb)
    return 1,0x00010000,255,225,0,210,255,255,255,255
end
tpt.graphics_func(graphics1,MRTR)
 
local function get_property(prop, x, y)
    if x >= 0 and x < sim.XRES and y >=0 and y < sim.YRES then
        return tpt.get_property(prop, x, y)
    end
    return 0
end
 
math.randomseed(os.time())
function MRTR_update(i, x, y, s, n)
    if tpt.get_property("tmp",i)==0 then
        tpt.parts[i].tmp=1
                --randvel=math.random(-20,20)/10
                tpt.parts[i].vx=3
                tpt.parts[i].vy=3
            end
 
            xvel=3
            yvel=3
            if math.abs(xvel) < 1 then
                tpt.delete(i)
            end
 
            xpos=x-xvel
            ypos=y-yvel
            elemtype=get_property("type",xpos,ypos)
 
            if elemtype == 0 then
                tpt.create(xpos,ypos,"bray")
                tpt.set_property("temp",5000,xpos,ypos)
            end
            tpt.parts[i].temp=9999
 
            elemtype25=get_property("type",x+xvel*5,y+yvel*5)
            elemtype24=get_property("type",x+xvel*4,y+yvel*4)
            elemtype23=get_property("type",x+xvel*3,y+yvel*3)
            elemtype22=get_property("type",x+xvel*2,y+yvel*2)
            elemtype21=get_property("type",x+xvel,y+yvel)
            if elemtype25 ~= 0 and elemtype25 ~= elements.ELEMENT_PT_MRTR and elemtype25 ~= tpt.el.bray.id and elemtype25 ~= tpt.el.dmnd.id and elemtype25 ~= tpt.el.void.id then
                tpt.set_property("type","bomb",i)
                tpt.set_property("life",0,i)
                tpt.set_property("tmp",0,i)
                elseif elemtype24 ~= 0 and elemtype24 ~= elements.ELEMENT_PT_MRTR and elemtype24 ~= tpt.el.bray.id and elemtype24 ~= tpt.el.dmnd.id and elemtype24 ~= tpt.el.void.id then
                    tpt.set_property("type","bomb",i)
                    tpt.set_property("life",0,i)
                    tpt.set_property("tmp",0,i)
                    elseif elemtype23 ~= 0 and elemtype23 ~= elements.ELEMENT_PT_MRTR and elemtype23 ~= tpt.el.bray.id and elemtype23 ~= tpt.el.dmnd.id and elemtype23 ~= tpt.el.void.id then
                        tpt.set_property("type","bomb",i)
                        tpt.set_property("life",0,i)
                        tpt.set_property("tmp",0,i)
                        elseif elemtype22 ~= 0 and elemtype22 ~= elements.ELEMENT_PT_MRTR and elemtype22 ~= tpt.el.bray.id and elemtype22 ~= tpt.el.dmnd.id and elemtype22 ~= tpt.el.void.id then
                            tpt.set_property("type","bomb",i)
                            tpt.set_property("life",0,i)
                            tpt.set_property("tmp",0,i)
                            elseif elemtype21 ~= 0 and elemtype21 ~= elements.ELEMENT_PT_MRTR and elemtype21 ~= tpt.el.bray.id and elemtype21 ~= tpt.el.dmnd.id and elemtype21 ~= tpt.el.void.id then
                                tpt.set_property("type","bomb",i)
                                tpt.set_property("life",0,i)
                                tpt.set_property("tmp",0,i)
                            end
                        end
 
                        tpt.element_func(MRTR_update, elements.ELEMENT_PT_MRTR,1)