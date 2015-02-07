local radm = elements.allocate("PURE" , "ENERGY1")
elements.element(radm, elements.element(elements.DEFAULT_PT_URAN))
elements.property(radm, "Name" , "\198")
elements.property(radm, "Description" , "Radioactive Material")
timeleft=0
function RADMUpdate(i,x,y,s,n)
 
if timeleft == 600 then
tpt.create(x + math.random(-1,1), y + math.random(-1,1), 'prot')
tpt.set_property("temp", math.huge, x, y)
timeleft=0
else
timeleft=timeleft+1
end
local type = tpt.get_property("type", x + math.random(-2,2), y + math.random(-2,2))
if type == tpt.el.prot.id then
tpt.parts[i].type = 0
end
end
tpt.element_func(RADMUpdate,radm)

function PROT__UPDATE(i,x,y,s,n)
local type = tpt.get_property("type", x + math.random(-1,1), y + math.random(-1,1))
if type == radm then
if math.random(1,250) == 100 then
tpt.create(x + math.random(-1,1), y + math.random(-1,1), 'prot')
end
end
end
tpt.element_func(PROT__UPDATE,tpt.el.prot.id)