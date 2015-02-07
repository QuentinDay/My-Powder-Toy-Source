local a = elements.allocate("XXXX" , "AAAA")
elements.element(a, elements.element(elements.DEFAULT_PT_PLUT))
elements.property(a, "Name" , "XXXX")
elements.property(a, "Description" , "Kinda like PLUT")
elements.property(a, "Advection" , 2)
function plutonium(i,x,y,s,n)
if tpt.get_property("type", x + math.random(-1,1), y + math.random(-1,1)) == tpt.el.neut.id then
if math.random(1,3) == 1 then
tpt.parts[i].type = tpt.el.neut.id
sim.pressure(x/4,y/4,75)
tpt.set_property("temp", math.huge, x, y)
elseif math.random(1,3) == 2 then
tpt.parts[i].type = tpt.el.lava.id
sim.pressure(x/4,y/4,75)
tpt.set_property("temp", math.huge, x, y)
elseif math.random(1,3) == 3 then
tpt.parts[i].type = tpt.el.uran.id
sim.pressure(x/4,y/4,75)
tpt.set_property("temp", math.huge, x ,y)
end
end
if sim.pressure(x/4,y/4) > 1 then
if math.random(1,250) == 10 then
tpt.create(x + math.random(-1,1), y + math.random(-1,1), 'neut')
tpt.set_property("temp", math.huge, x, y)
end
end
end
tpt.element_func(plutonium,a)

function neutron(i,x,y,s,n)
if tpt.get_property("type", x + math.random(-1,1), y + math.random(-1,1)) == a then
if math.random(1,30) == 10 then
tpt.create(x + math.random(-1,1), y + math.random(-1,1), 'neut')
local type = tpt.get_property("temp", x, y)
tpt.set_property("temp", type + 10, x, y)
end
end
end
tpt.element_func(neutron,tpt.el.neut.id)