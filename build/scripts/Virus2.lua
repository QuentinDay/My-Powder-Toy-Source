 local a = elements.allocate("QUENTIN" , "VRS2")
elements.element(elements.QUENTIN_PT_VRS2, elements.element(elements.DEFAULT_PT_VIRS))
elements.property(elements.QUENTIN_PT_VRS2, "Name" , "VRS2")
elements.property(elements.QUENTIN_PT_VRS2, "Description" , "Virus 2")
elements.property(elements.QUENTIN_PT_VRS2, "Temperature" , 345.15)
elements.property(elements.QUENTIN_PT_VRS2, "Gravity" , 2)
elements.property(elements.QUENTIN_PT_VRS2, "Falldown" , 2)
elements.property(elements.QUENTIN_PT_VRS2, "MenuVisible" , 1)
elements.property(elements.QUENTIN_PT_VRS2, "Colour" , 0xFE11F6)
elements.property(elements.QUENTIN_PT_VRS2, "LowTemperature" , 305.0)
elements.property(elements.QUENTIN_PT_VRS2, "LowTemperatureTransition" , elements.QUENTIN_PT_VSS2)
elements.property(elements.QUENTIN_PT_VRS2, "HighTemperature" , 673.0)
elements.property(elements.QUENTIN_PT_VRS2, "HighTemperatureTransition" , elements.QUENTIN_PT_VRSG2)
function VRS2UPDATE2(i,x,y,s,n)
local type = tpt.get_property("ctype", x, y)
if type == 0 then
tpt.set_property("type", elements.QUENTIN_PT_VRS2, x + math.random(-2,2), y + math.random(-2,2))
end
local type = tpt.get_property("type", x + math.random(-2,2), y + math.random(-2,2))
if type == elements.QUENTIN_PT_VRS2 then
tpt.set_property("type", elements.QUENTIN_PT_VSS2, x + math.random(-2,2), y + math.random(-2,2))
end
end
tpt.element_func(VRS2UPDATE2,elements.QUENTIN_PT_VRS2)

 local a = elements.allocate("QUENTIN" , "VSS2")
elements.element(elements.QUENTIN_PT_VSS2, elements.element(elements.DEFAULT_PT_VRSS))
elements.property(elements.QUENTIN_PT_VSS2, "Name" , "VSS2")
elements.property(elements.QUENTIN_PT_VSS2, "Description" , "Virus Solid 2")
elements.property(elements.QUENTIN_PT_VSS2, "MenuVisible" , 0)
elements.property(elements.QUENTIN_PT_VSS2, "HighTemperature" , 305.0)
elements.property(elements.QUENTIN_PT_VSS2, "HighTemperatureTransition" , elements.QUENTIN_PT_VRS2)
function VRS2UPDATE2(i,x,y,s,n)
local type = tpt.get_property("ctype", x, y)
if type == 0 then
tpt.set_property("type", elements.QUENTIN_PT_VSS2, x + math.random(-2,2), y + math.random(-2,2))
end
local type = tpt.get_property("type", x + math.random(-2,2), y + math.random(-2,2))
if type == elements.QUENTIN_PT_VRS2 then
tpt.set_property("type", elements.QUENTIN_PT_VSS2, x + math.random(-2,2), y + math.random(-2,2))
end
end
tpt.element_func(VRS2UPDATE2,elements.QUENTIN_PT_VSS2)

 local a = elements.allocate("QUENTIN" , "VRSG2")
elements.element(elements.QUENTIN_PT_VRSG2, elements.element(elements.DEFAULT_PT_VRSG))
elements.property(elements.QUENTIN_PT_VRSG2, "Name" , "VRSG2")
elements.property(elements.QUENTIN_PT_VRSG2, "Description" , "Virus Gas 2")
elements.property(elements.QUENTIN_PT_VRSG2, "MenuVisible" , 0)
elements.property(elements.QUENTIN_PT_VRSG2, "Flammable" , 500)
elements.property(elements.QUENTIN_PT_VRS2, "LowTemperature" , 673.0)
elements.property(elements.QUENTIN_PT_VRS2, "LowTemperatureTransition" , elements.QUENTIN_PT_VSS2)
function VRS2UPDATE2(i,x,y,s,n)
local type = tpt.get_property("ctype", x, y)
if type == 0 then
tpt.set_property("type", elements.QUENTIN_PT_VSS2, x + math.random(-2,2), y + math.random(-2,2))
end
end
tpt.element_func(VRS2UPDATE2,elements.QUENTIN_PT_VSS2)