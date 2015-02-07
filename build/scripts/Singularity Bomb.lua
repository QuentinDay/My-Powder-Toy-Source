local napalm = elements.allocate("QUENTIN", "SNGB")
elements.element(elements.QUENTIN_PT_SNGB, elements.element(elements.DEFAULT_PT_BCOL))
elements.property(elements.QUENTIN_PT_SNGB, "Name", "SNGB")
elements.property(elements.QUENTIN_PT_SNGB, "Description", "Singularity Bomb.")
elements.property(elements.QUENTIN_PT_SNGB, "Colour", 0x8A2E8A)
elements.property(elements.QUENTIN_PT_SNGB, "MenuSection", 5)
elements.property(elements.QUENTIN_PT_SNGB, "Gravity", 0)
elements.property(elements.QUENTIN_PT_SNGB, "Flammable", 0)
elements.property(elements.QUENTIN_PT_SNGB, "Explosive", 0)
elements.property(elements.QUENTIN_PT_SNGB, "Loss", 0.15)
elements.property(elements.QUENTIN_PT_SNGB, "AirLoss", 0.96)
elements.property(elements.QUENTIN_PT_SNGB, "AirDrag", 0.03)
elements.property(elements.QUENTIN_PT_SNGB, "Advection", 0)
elements.property(elements.QUENTIN_PT_SNGB, "Weight", 32)
elements.property(elements.QUENTIN_PT_SNGB, "Diffusion", 0)
elements.property(elements.QUENTIN_PT_SNGB, "Falldown", 0)
SINGUpdate = function(i, x, y, s, n)
 local clife = tpt.get_property('life', x, y)
 if clife > 1 then
 for cx = -1, 1, 2 do
 for cy = -1, 1, 2 do
 tpt.create(x + cx, y + cy, 'sing')
 end
 end
 tpt.set_property('life', clife - 1, x, y)
 elseif clife == 1 then
 tpt.set_property('type', 0, x, y)
 elseif s > 0 then
 for cx = -1, 1, 2 do
 for cy = -1, 1, 2 do
 if tpt.get_property('type', x + cx, y + cy) == 4 or tpt.get_property('type', x + cx, y + cy) == 49 then
 tpt.set_property('life', 100, x, y)
 return true
 end
 end
 end
 end
end
tpt.element_func(SINGUpdate, tpt.element('sngb'))

function something(i,x,y,s,n)
    if math.random(1,50) == 25 then
        tpt.set_property("tmp", 99999, x + math.random(-1,1), y + math.random(-1,1))
        tpt.set_property("life", 0, x + math.random(-1,1), y + math.random(-1,1))
    end
end
tpt.element_func(something,tpt.el.sing.id)

function explode(i,x,y,s,n)
    local type = tpt.get_property("type", x + math.random(-3,3), y + math.random(-3,3))
    if type == elements.QUENTIN_PT_SNGB then
        tpt.parts[i].type = tpt.el.sing.id
    end
end
tpt.element_func(explode,tpt.el.fire.id)