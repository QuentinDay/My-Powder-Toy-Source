local alph = elements.allocate("Alph", "alph")
 elements.element(alph, elements.element(elements.DEFAULT_PT_ELEC))
 elements.property(alph, "Name", "ALPH")
 elements.property(alph, "Colour", 0xFFDD00)
 elements.property(alph, "Description", "Alpha particle.")
 elements.property(alph, "Weight", -1)
 elements.property(alph, "HeatConduct", 251)
 elements.property(alph, "Temperature", 295.15)
 elements.property(alph, "Properties" , 0x10410)
 elements.property(alph, "AirLoss", 1)
 elements.property(alph, "Loss", 1)
 elements.property(alph, "Collision", -0.99)
function alpha(i, x, y, surround, nt)
	if tpt.get_property("tmp" , i) == 0 then
      local a = (math.random(360)-1) * 0.01745329;
      tpt.set_property("life",680,i)
      tpt.set_property("vx",2*math.cos(a),i)
      tpt.set_property("vy",2*math.sin(a),i)
      tpt.set_property("tmp", 1, i)
  end
end
tpt.element_func(alpha, alph, 1)

local a = elements.allocate("NOBODY" , "ERGY")
elements.element(elements.NOBODY_PT_ERGY, elements.element(elements.DEFAULT_PT_NEUT))
elements.property(elements.NOBODY_PT_ERGY, "Name" , "ERGY")
elements.property(elements.NOBODY_PT_ERGY, "Description" , "High temperature Neutron")
elements.property(elements.NOBODY_PT_ERGY, "Temperature" , math.huge)
elements.property(elements.NOBODY_PT_ERGY, "Gravity" , 0)
elements.property(elements.NOBODY_PT_ERGY, "Falldown" , 0)
elements.property(elements.NOBODY_PT_ERGY, "Advection" , 0)
elements.property(elements.NOBODY_PT_ERGY, "MenuSection" , 10)
elements.property(elements.NOBODY_PT_ERGY, "AirLoss" , 1)
elements.property(elements.NOBODY_PT_ERGY, "Loss" , 1)
elements.property(elements.NOBODY_PT_ERGY, "Collision" , -0.99)
elements.property(elements.NOBODY_PT_ERGY, "Weight" , -1)
elements.property(elements.NOBODY_PT_ERGY, "HeatConduct" , 251)
elements.property(elements.NOBODY_PT_ERGY, "Properties" , 0x14410)
elements.property(elements.NOBODY_PT_ERGY, "MenuVisible" , 1)
function update_energy(i, x, y, surround, nt)
   if tpt.get_property("tmp",i) == 0 then
local r = (math.random(128)+127) / 127;
local a = (math.random(360)-1) * 0.01745329;
tpt.set_property("life",math.random(480)+479,i)
tpt.set_property("vx",r*math.cos(a),i)
tpt.set_property("vy",r*math.sin(a),i)

tpt.set_property("tmp", 1, i)
   end
end
tpt.element_func(update_energy,elements.NOBODY_PT_ERGY, 1)