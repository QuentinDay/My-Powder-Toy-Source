
-- cred  to FeynmanLogomaker for lines 18-41, i changed some variables, and the code was extremely boilerplate!
local NOPOLM = elements.allocate("cccp3", "NPLM")
elements.property(elements.CCCP3_PT_NPLM, "Flammable", 1000)
elements.property(elements.CCCP3_PT_NPLM, "Description", "NAPALM! burns extremely hot")
elements.property(elements.CCCP3_PT_NPLM, "Colour", 0xff0000)
elements.property(elements.CCCP3_PT_NPLM, "MenuSection", 5)
elements.property(elements.CCCP3_PT_NPLM, "Gravity", 1)
elements.property(elements.CCCP3_PT_NPLM, "Flammable", 1)
elements.property(elements.CCCP3_PT_NPLM, "Explosive", 0.30)
elements.property(elements.CCCP3_PT_NPLM, "Loss", 0.314195263814149263) -- pi, LOL!
elements.property(elements.CCCP3_PT_NPLM, "AirLoss", 0.00314195263814149263)
elements.property(elements.CCCP3_PT_NPLM, "AirDrag", 0.00314195263814149263)
elements.property(elements.CCCP3_PT_NPLM, "Advection", 0)
elements.property(elements.CCCP3_PT_NPLM, "Weight", 3200)
elements.property(elements.CCCP3_PT_NPLM, "Diffusion", 0)
elements.property(elements.CCCP3_PT_NPLM, "Falldown", 1)
elements.property(elements.CCCP3_PT_NPLM, "MenuVisible" , 1)
elements.property(elements.CCCP3_PT_NPLM, "Name", "NPLM")
NU = function(i, x, y, s, n)
 local clife = tpt.get_property('life', x, y)
 if clife > 1 then
  for cx = -1, 1, 2 do
   for cy = -1, 1, 2 do
    tpt.create(x + cx, y + cy, 'fire')
   end
  end
  tpt.set_property('life', clife - 1, x, y)
 elseif clife == 1 then
  tpt.set_property('type', 0, x, y)
 elseif s > 0 then
  for cx = -1, 1, 2 do
   for cy = -1, 1, 2 do
    if tpt.get_property('type', x + cx, y + cy) == 4 or tpt.get_property('type', x + cx, y + cy) == 49  then
     tpt.set_property('life', 3000, x, y)
     tpt.set_property('temp', 9999, x, y)
     return true
    end
   end
  end
 end
end
tpt.element_func(NU, tpt.element('nplm'))