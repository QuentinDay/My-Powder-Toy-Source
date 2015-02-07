local a = elements.allocate("QUENTIN" , "HDCB")
elements.element(elements.QUENTIN_PT_HDCB, elements.element(elements.DEFAULT_PT_BCOL))
elements.property(elements.QUENTIN_PT_HDCB, "Name" , "HDCB")
elements.property(elements.QUENTIN_PT_HDCB, "Description" , "Second BCOL")
elements.property(elements.QUENTIN_PT_HDCB, "MenuSection" , 5)
elements.property(elements.QUENTIN_PT_HDCB, "Gravity" , 0.3)
elements.property(elements.QUENTIN_PT_HDCB, "Falldown" , 1)
elements.property(elements.QUENTIN_PT_HDCB, "Flammable" , 0)
elements.property(elements.QUENTIN_PT_HDCB, "Explosive" , 0)
elements.property(elements.QUENTIN_PT_HDCB, "Diffusion" , 0)
elements.property(elements.QUENTIN_PT_HDCB, "Weight" , 90)
elements.property(elements.QUENTIN_PT_HDCB, "Advection" , 0.4)
elements.property(elements.QUENTIN_PT_HDCB, "AirLoss" , 0.94)
elements.property(elements.QUENTIN_PT_HDCB, "Loss" , 0.95)
elements.property(elements.QUENTIN_PT_HDCB, "Temperature" , 295.15)
elements.property(elements.QUENTIN_PT_HDCB, "HeatConduct" , 150)
elements.property(elements.QUENTIN_PT_HDCB, "MenuVisible" , 1)
HDCBUpdate = function(i, x, y, s, n)
local clife = tpt.get_property('life', x, y)
if clife > 1 then
for cx = -1, 1, 2 do
for cy = -1, 1, 2 do
	if math.random(1,20) == 1 then
tpt.create(x + cx, y + cy, 'fire')
tpt.set_property("temp", 2772, x, y)
sim.pressure(x/4,y/4,10)
end
end
end
tpt.set_property('life', clife - 1, x, y)
elseif clife == 1 then
tpt.set_property('type', 0, x, y)
elseif s > 0 then
for cx = -1, 1, 2 do
for cy = -1, 1, 2 do
if tpt.get_property('type', x + cx, y + cy) == 4 or tpt.get_property('type', x + cx, y + cy) == 49 then
tpt.set_property('life', 200, x, y)
return true
end
end
end
end
end
tpt.element_func(HDCBUpdate, tpt.element('hdcb'))