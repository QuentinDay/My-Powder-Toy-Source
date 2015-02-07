
-- breakpoint element for very slow spark circuit debugging
local ellie = elem.allocate("boxmein", "BRPT")
elem.element(ellie, elem.element(elem.DEFAULT_PT_DMND))
elem.property(ellie, "Name", "BRPT")
elem.property(ellie, "Colour", 0xDEADBEEF)
elem.property(ellie, "Description", "Breakpoints. When spark is touching, will pause the game and turn themselves red. Also glowy.")
elem.property(ellie, "MenuSection", elem.SC_POWERED)
elem.property(ellie, "Properties", elem.PROP_LIFE_DEC)
elem.property(ellie, "Update", function (i, x, y, ss, nt) 
    local life = sim.partProperty(i, "life")
    for ry=-1,1,1 do 
      for rx=-1,1,1 do
        if life == 0 and tpt.get_property("type", x+rx, y+ry) == 15 then
          tpt.set_pause(1)
          sim.partProperty(i, "life", 10)
        end
      end
    end
  end)

elem.property(ellie, "Graphics", function (i, colr, colg, colb) 
  local x, y = sim.partPosition(i)
  local life = sim.partProperty(i, "life")
  if life > 0 then
    pixel_mode = 296
    colg, colb = 0, 0
    colr = 255
  else

    pixel_mode = 1
  end
  return 0,pixel_mode,255,colr,colg,colb,255,colr,colg,colb
  end)