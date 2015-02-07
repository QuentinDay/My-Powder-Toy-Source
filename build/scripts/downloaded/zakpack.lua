elements.allocate('AU3FGEN', 'AIRW')
elements.element(elements.AU3FGEN_PT_AIRW, elements.element(elements.DEFAULT_PT_BCOL))
elements.property(elements.AU3FGEN_PT_AIRW, 'Name', 'AIRW')
elements.property(elements.AU3FGEN_PT_AIRW, 'Description', 'Air Infused Water')
elements.property(elements.AU3FGEN_PT_AIRW, 'Color', '0xD6F5FF')
elements.property(elements.AU3FGEN_PT_AIRW, 'MenuSection', '7')
elements.property(elements.AU3FGEN_PT_AIRW, 'Gravity', '1')
elements.property(elements.AU3FGEN_PT_AIRW, 'Flammable', '10')
elements.property(elements.AU3FGEN_PT_AIRW, 'Explosive', '0')
elements.property(elements.AU3FGEN_PT_AIRW, 'Loss', '0')
elements.property(elements.AU3FGEN_PT_AIRW, 'AirLoss', '1')
elements.property(elements.AU3FGEN_PT_AIRW, 'AirDrag', '0')
elements.property(elements.AU3FGEN_PT_AIRW, 'Advection', '1')
elements.property(elements.AU3FGEN_PT_AIRW, 'Weight', '0.1')
elements.property(elements.AU3FGEN_PT_AIRW, 'Diffusion', '0.5')
elements.property(elements.AU3FGEN_PT_AIRW, 'Falldown', '2')
local g = function(i, x, y, s, n)
--Update Function
end 
tpt.element_func(g, tpt.element('AIRW'))
local g = function(i, r, g, b)
local cola, colr, colg, colb, firea, firer, fireg, fireb
cola = 255 -- Alpha 
colr = 220 -- Red 
colg = 220 -- Green 
colb = 255 -- Blue 
firea = 255 -- Alpha Glow 
firer = 255 -- Red Glow 
fireg = 255 -- Green Glow 
fireb = 255 -- Blue Glow 
--See Pixel Mode Values Table for more info
return 0, 0x00000001, cola, colr, colg, colb, firea, firer, fireg, fireb
end 
tpt.graphics_func(g, tpt.element('AIRW'))

elements.allocate('AU3FGEN', 'PLSW')
elements.element(elements.AU3FGEN_PT_PLSW, elements.element(elements.DEFAULT_PT_BCOL))
elements.property(elements.AU3FGEN_PT_PLSW, 'Name', 'PLSW')
elements.property(elements.AU3FGEN_PT_PLSW, 'Description', 'Plasma water,  FIRE turns it into PLSM')
elements.property(elements.AU3FGEN_PT_PLSW, 'Color', '0x4D00FF')
elements.property(elements.AU3FGEN_PT_PLSW, 'MenuSection', '7')
elements.property(elements.AU3FGEN_PT_PLSW, 'Gravity', '1')
elements.property(elements.AU3FGEN_PT_PLSW, 'Flammable', '99999999999')
elements.property(elements.AU3FGEN_PT_PLSW, 'Explosive', '0')
elements.property(elements.AU3FGEN_PT_PLSW, 'Loss', '0')
elements.property(elements.AU3FGEN_PT_PLSW, 'AirLoss', '1')
elements.property(elements.AU3FGEN_PT_PLSW, 'AirDrag', '0')
elements.property(elements.AU3FGEN_PT_PLSW, 'Advection', '1')
elements.property(elements.AU3FGEN_PT_PLSW, 'Weight', '0.8')
elements.property(elements.AU3FGEN_PT_PLSW, 'Diffusion', '0.2')
elements.property(elements.AU3FGEN_PT_PLSW, 'Falldown', '2')
local g = function(i, x, y, s, n)
--Update Function
end 
tpt.element_func(g, tpt.element('PLSW'))
local g = function(i, r, g, b)
local cola, colr, colg, colb, firea, firer, fireg, fireb
cola = 255 -- Alpha 
colr = 77 -- Red 
colg = 10 -- Green 
colb = 255 -- Blue 
firea = 255 -- Alpha Glow 
firer = 255 -- Red Glow 
fireg = 255 -- Green Glow 
fireb = 255 -- Blue Glow 
--See Pixel Mode Values Table for more info
return 0, 0x00000001, cola, colr, colg, colb, firea, firer, fireg, fireb
end 
tpt.graphics_func(g, tpt.element('PLSW'))

elements.allocate('AU3FGEN', 'SEA')
elements.element(elements.AU3FGEN_PT_SEA, elements.element(elements.DEFAULT_PT_BCOL))
elements.property(elements.AU3FGEN_PT_SEA, 'Name', 'SEA')
elements.property(elements.AU3FGEN_PT_SEA, 'Description', 'Modified, darker water.')
elements.property(elements.AU3FGEN_PT_SEA, 'Color', '0x30388A')
elements.property(elements.AU3FGEN_PT_SEA, 'MenuSection', '7')
elements.property(elements.AU3FGEN_PT_SEA, 'Gravity', '0.7')
elements.property(elements.AU3FGEN_PT_SEA, 'Flammable', '0.1')
elements.property(elements.AU3FGEN_PT_SEA, 'Explosive', '0')
elements.property(elements.AU3FGEN_PT_SEA, 'Loss', '0.1')
elements.property(elements.AU3FGEN_PT_SEA, 'AirLoss', '0.2')
elements.property(elements.AU3FGEN_PT_SEA, 'AirDrag', '0')
elements.property(elements.AU3FGEN_PT_SEA, 'Advection', '1')
elements.property(elements.AU3FGEN_PT_SEA, 'Weight', '1.4')
elements.property(elements.AU3FGEN_PT_SEA, 'Diffusion', '1')
elements.property(elements.AU3FGEN_PT_SEA, 'Falldown', '2')
local g = function(i, x, y, s, n)
--Update Function
end 
tpt.element_func(g, tpt.element('SEA'))
local g = function(i, r, g, b)
local cola, colr, colg, colb, firea, firer, fireg, fireb
cola = 255 -- Alpha 
colr = 50 -- Red 
colg = 50 -- Green 
colb = 140 -- Blue 
firea = 255 -- Alpha Glow 
firer = 255 -- Red Glow 
fireg = 255 -- Green Glow 
fireb = 255 -- Blue Glow 
--See Pixel Mode Values Table for more info
return 0, 0x00000001, cola, colr, colg, colb, firea, firer, fireg, fireb
end 
tpt.graphics_func(g, tpt.element('SEA'))

elements.allocate('AU3FGEN', 'ARPW')
elements.element(elements.AU3FGEN_PT_ARPW, elements.element(elements.DEFAULT_PT_BCOL))
elements.property(elements.AU3FGEN_PT_ARPW, 'Name', 'ARPW')
elements.property(elements.AU3FGEN_PT_ARPW, 'Description', 'Air Infused Powder, Very light, like AIRW and AIRP')
elements.property(elements.AU3FGEN_PT_ARPW, 'Color', '0xFFEDFF')
elements.property(elements.AU3FGEN_PT_ARPW, 'MenuSection', '8')
elements.property(elements.AU3FGEN_PT_ARPW, 'Gravity', '1')
elements.property(elements.AU3FGEN_PT_ARPW, 'Flammable', '5')
elements.property(elements.AU3FGEN_PT_ARPW, 'Explosive', '0')
elements.property(elements.AU3FGEN_PT_ARPW, 'Loss', '0')
elements.property(elements.AU3FGEN_PT_ARPW, 'AirLoss', '1')
elements.property(elements.AU3FGEN_PT_ARPW, 'AirDrag', '0')
elements.property(elements.AU3FGEN_PT_ARPW, 'Advection', '1')
elements.property(elements.AU3FGEN_PT_ARPW, 'Weight', '0.1')
elements.property(elements.AU3FGEN_PT_ARPW, 'Diffusion', '0.2')
elements.property(elements.AU3FGEN_PT_ARPW, 'Falldown', '1')
local g = function(i, x, y, s, n)
--Update Function
end 
tpt.element_func(g, tpt.element('ARPW'))
local g = function(i, r, g, b)
local cola, colr, colg, colb, firea, firer, fireg, fireb
cola = 255 -- Alpha 
colr = 255 -- Red 
colg = 237 -- Green 
colb = 255 -- Blue 
firea = 255 -- Alpha Glow 
firer = 255 -- Red Glow 
fireg = 255 -- Green Glow 
fireb = 255 -- Blue Glow 
--See Pixel Mode Values Table for more info
return 0, 0x00000001, cola, colr, colg, colb, firea, firer, fireg, fireb
end 
tpt.graphics_func(g, tpt.element('ARPW'))

elements.allocate('AU3FGEN', 'EXPL')
elements.element(elements.AU3FGEN_PT_EXPL, elements.element(elements.DEFAULT_PT_BCOL))
elements.property(elements.AU3FGEN_PT_EXPL, 'Name', 'EXPL')
elements.property(elements.AU3FGEN_PT_EXPL, 'Description', 'Weak C4 like explosive.')
elements.property(elements.AU3FGEN_PT_EXPL, 'Color', '0xFFFFFF')
elements.property(elements.AU3FGEN_PT_EXPL, 'MenuSection', '5')
elements.property(elements.AU3FGEN_PT_EXPL, 'Gravity', '0')
elements.property(elements.AU3FGEN_PT_EXPL, 'Flammable', '40')
elements.property(elements.AU3FGEN_PT_EXPL, 'Explosive', '2')
elements.property(elements.AU3FGEN_PT_EXPL, 'Loss', '0')
elements.property(elements.AU3FGEN_PT_EXPL, 'AirLoss', '1')
elements.property(elements.AU3FGEN_PT_EXPL, 'AirDrag', '0')
elements.property(elements.AU3FGEN_PT_EXPL, 'Advection', '1')
elements.property(elements.AU3FGEN_PT_EXPL, 'Weight', '9999')
elements.property(elements.AU3FGEN_PT_EXPL, 'Diffusion', '0')
elements.property(elements.AU3FGEN_PT_EXPL, 'Diffusion', '0')
local g = function(i, x, y, s, n)
--Update Function
end 
tpt.element_func(g, tpt.element('EXPL'))
local g = function(i, r, g, b)
local cola, colr, colg, colb, firea, firer, fireg, fireb
cola = 255 -- Alpha 
colr = 255 -- Red 
colg = 255 -- Green 
colb = 255 -- Blue 
firea = 255 -- Alpha Glow 
firer = 255 -- Red Glow 
fireg = 255 -- Green Glow 
fireb = 255 -- Blue Glow 
--See Pixel Mode Values Table for more info
return 0, 0x00000001, cola, colr, colg, colb, firea, firer, fireg, fireb
end 
tpt.graphics_func(g, tpt.element('EXPL'))

elements.allocate('AU3FGEN', 'TAR')
elements.element(elements.AU3FGEN_PT_TAR, elements.element(elements.DEFAULT_PT_BCOL))
elements.property(elements.AU3FGEN_PT_TAR, 'Name', 'TAR')
elements.property(elements.AU3FGEN_PT_TAR, 'Description', 'Tar, slowly burns.')
elements.property(elements.AU3FGEN_PT_TAR, 'Color', '0x302436')
elements.property(elements.AU3FGEN_PT_TAR, 'MenuSection', '7')
elements.property(elements.AU3FGEN_PT_TAR, 'Gravity', '0.2')
elements.property(elements.AU3FGEN_PT_TAR, 'Flammable', '1.5')
elements.property(elements.AU3FGEN_PT_TAR, 'Explosive', '0')
elements.property(elements.AU3FGEN_PT_TAR, 'Loss', '0')
elements.property(elements.AU3FGEN_PT_TAR, 'AirLoss', '1')
elements.property(elements.AU3FGEN_PT_TAR, 'AirDrag', '0')
elements.property(elements.AU3FGEN_PT_TAR, 'Advection', '1')
elements.property(elements.AU3FGEN_PT_TAR, 'Weight', '20')
elements.property(elements.AU3FGEN_PT_TAR, 'Diffusion', '0')
elements.property(elements.AU3FGEN_PT_TAR, 'Falldown', '2')
elements.property(elements.AU3FGEN_PT_TAR, 'Temperature', '475')
local g = function(i, x, y, s, n)
--Update Function
end 
tpt.element_func(g, tpt.element('TAR'))
local g = function(i, r, g, b)
local cola, colr, colg, colb, firea, firer, fireg, fireb
cola = 255 -- Alpha 
colr = 48 -- Red 
colg = 36 -- Green 
colb = 54 -- Blue 
firea = 255 -- Alpha Glow 
firer = 255 -- Red Glow 
fireg = 255 -- Green Glow 
fireb = 255 -- Blue Glow 
--See Pixel Mode Values Table for more info
return 0, 0x00000001, cola, colr, colg, colb, firea, firer, fireg, fireb
end 
tpt.graphics_func(g, tpt.element('TAR'))

elements.allocate('AU3FGEN', 'BANA')
elements.element(elements.AU3FGEN_PT_BANA, elements.element(elements.DEFAULT_PT_BCOL))
elements.property(elements.AU3FGEN_PT_BANA, 'Name', 'BANA')
elements.property(elements.AU3FGEN_PT_BANA, 'Description', 'Bananas, Suggested by my sister.')
elements.property(elements.AU3FGEN_PT_BANA, 'Color', '0xFFFF0A')
elements.property(elements.AU3FGEN_PT_BANA, 'MenuSection', '11')
elements.property(elements.AU3FGEN_PT_BANA, 'Gravity', '0.2')
elements.property(elements.AU3FGEN_PT_BANA, 'Flammable', '10')
elements.property(elements.AU3FGEN_PT_BANA, 'Explosive', '0')
elements.property(elements.AU3FGEN_PT_BANA, 'Loss', '0')
elements.property(elements.AU3FGEN_PT_BANA, 'AirLoss', '1')
elements.property(elements.AU3FGEN_PT_BANA, 'AirDrag', '0')
elements.property(elements.AU3FGEN_PT_BANA, 'Advection', '1')
elements.property(elements.AU3FGEN_PT_BANA, 'Weight', '20')
elements.property(elements.AU3FGEN_PT_BANA, 'Diffusion', '0')
elements.property(elements.AU3FGEN_PT_BANA, 'Falldown', '1')
local g = function(i, x, y, s, n)
--Update Function
end 
tpt.element_func(g, tpt.element('BANA'))
local g = function(i, r, g, b)
local cola, colr, colg, colb, firea, firer, fireg, fireb
cola = 255 -- Alpha 
colr = 255 -- Red 
colg = 255 -- Green 
colb = 10 -- Blue 
firea = 255 -- Alpha Glow 
firer = 255 -- Red Glow 
fireg = 255 -- Green Glow 
fireb = 255 -- Blue Glow 
--See Pixel Mode Values Table for more info
return 0, 0x00000001, cola, colr, colg, colb, firea, firer, fireg, fireb
end 
tpt.graphics_func(g, tpt.element('BANA'))

elements.allocate('AU3FGEN', 'PLSB')
elements.element(elements.AU3FGEN_PT_PLSB, elements.element(elements.DEFAULT_PT_BCOL))
elements.property(elements.AU3FGEN_PT_PLSB, 'Name', 'PLSB')
elements.property(elements.AU3FGEN_PT_PLSB, 'Description', 'Plasma bomb, burns into PLSM instead of FIRE')
elements.property(elements.AU3FGEN_PT_PLSB, 'Color', '0x964FFF')
elements.property(elements.AU3FGEN_PT_PLSB, 'MenuSection', '5')
elements.property(elements.AU3FGEN_PT_PLSB, 'Gravity', '0.2')
elements.property(elements.AU3FGEN_PT_PLSB, 'Flammable', '99999999999999')
elements.property(elements.AU3FGEN_PT_PLSB, 'Explosive', '1')
elements.property(elements.AU3FGEN_PT_PLSB, 'Loss', '0')
elements.property(elements.AU3FGEN_PT_PLSB, 'AirLoss', '1')
elements.property(elements.AU3FGEN_PT_PLSB, 'AirDrag', '0')
elements.property(elements.AU3FGEN_PT_PLSB, 'Advection', '1')
elements.property(elements.AU3FGEN_PT_PLSB, 'Weight', '2')
elements.property(elements.AU3FGEN_PT_PLSB, 'Diffusion', '0')
elements.property(elements.AU3FGEN_PT_PLSB, 'Falldown', '1')
local g = function(i, x, y, s, n)
--Update Function
end 
tpt.element_func(g, tpt.element('PLSB'))
local g = function(i, r, g, b)
local cola, colr, colg, colb, firea, firer, fireg, fireb
cola = 255 -- Alpha 
colr = 150 -- Red 
colg = 79 -- Green 
colb = 255 -- Blue 
firea = 255 -- Alpha Glow 
firer = 255 -- Red Glow 
fireg = 255 -- Green Glow 
fireb = 255 -- Blue Glow 
--See Pixel Mode Values Table for more info
return 0, 0x00000001, cola, colr, colg, colb, firea, firer, fireg, fireb
end 
tpt.graphics_func(g, tpt.element('PLSB'))

elements.allocate('AU3FGEN', 'EXGS')
elements.element(elements.AU3FGEN_PT_EXGS, elements.element(elements.DEFAULT_PT_BCOL))
elements.property(elements.AU3FGEN_PT_EXGS, 'Name', 'EXGS')
elements.property(elements.AU3FGEN_PT_EXGS, 'Description', 'Explosive Gas')
elements.property(elements.AU3FGEN_PT_EXGS, 'Color', '0x544D6E')
elements.property(elements.AU3FGEN_PT_EXGS, 'MenuSection', '5')
elements.property(elements.AU3FGEN_PT_EXGS, 'Gravity', '0.1')
elements.property(elements.AU3FGEN_PT_EXGS, 'Flammable', '500')
elements.property(elements.AU3FGEN_PT_EXGS, 'Explosive', '2')
elements.property(elements.AU3FGEN_PT_EXGS, 'Loss', '0')
elements.property(elements.AU3FGEN_PT_EXGS, 'AirLoss', '1')
elements.property(elements.AU3FGEN_PT_EXGS, 'AirDrag', '0')
elements.property(elements.AU3FGEN_PT_EXGS, 'Advection', '1')
elements.property(elements.AU3FGEN_PT_EXGS, 'Weight', '0.1')
elements.property(elements.AU3FGEN_PT_EXGS, 'Diffusion', '3')
elements.property(elements.AU3FGEN_PT_EXGS, 'Falldown', '0')
local g = function(i, x, y, s, n)
--Update Function
end 
tpt.element_func(g, tpt.element('EXGS'))
local g = function(i, r, g, b)
local cola, colr, colg, colb, firea, firer, fireg, fireb
cola = 255 -- Alpha 
colr = 84 -- Red 
colg = 77 -- Green 
colb = 110 -- Blue 
firea = 255 -- Alpha Glow 
firer = 255 -- Red Glow 
fireg = 255 -- Green Glow 
fireb = 255 -- Blue Glow 
--See Pixel Mode Values Table for more info
return 0, 0x00000001, cola, colr, colg, colb, firea, firer, fireg, fireb
end 
tpt.graphics_func(g, tpt.element('EXGS'))

elements.allocate('AU3FGEN', 'INVI')
elements.element(elements.AU3FGEN_PT_INVI, elements.element(elements.DEFAULT_PT_BCOL))
elements.property(elements.AU3FGEN_PT_INVI, 'Name', 'INVI')
elements.property(elements.AU3FGEN_PT_INVI, 'Description', 'Invisible Stuff, for lazy people.')
elements.property(elements.AU3FGEN_PT_INVI, 'Color', '0x000000')
elements.property(elements.AU3FGEN_PT_INVI, 'MenuSection', '0')
elements.property(elements.AU3FGEN_PT_INVI, 'Gravity', '1')
elements.property(elements.AU3FGEN_PT_INVI, 'Flammable', '0')
elements.property(elements.AU3FGEN_PT_INVI, 'Explosive', '0')
elements.property(elements.AU3FGEN_PT_INVI, 'Loss', '0')
elements.property(elements.AU3FGEN_PT_INVI, 'AirLoss', '1')
elements.property(elements.AU3FGEN_PT_INVI, 'AirDrag', '0')
elements.property(elements.AU3FGEN_PT_INVI, 'Advection', '1')
elements.property(elements.AU3FGEN_PT_INVI, 'Weight', '0')
elements.property(elements.AU3FGEN_PT_INVI, 'Diffusion', '0')
elements.property(elements.AU3FGEN_PT_INVI, 'Falldown', '1')
local g = function(i, x, y, s, n)
--Update Function
end 
tpt.element_func(g, tpt.element('INVI'))
local g = function(i, r, g, b)
local cola, colr, colg, colb, firea, firer, fireg, fireb
cola = 255 -- Alpha 
colr = 0 -- Red 
colg = 0 -- Green 
colb = 0 -- Blue 
firea = 255 -- Alpha Glow 
firer = 255 -- Red Glow 
fireg = 255 -- Green Glow 
fireb = 255 -- Blue Glow 
--See Pixel Mode Values Table for more info
return 0, 0x00000001, cola, colr, colg, colb, firea, firer, fireg, fireb
end 
tpt.graphics_func(g, tpt.element('INVI'))

elements.allocate('AU3FGEN', 'FLAM')
elements.element(elements.AU3FGEN_PT_FLAM, elements.element(elements.DEFAULT_PT_BCOL))
elements.property(elements.AU3FGEN_PT_FLAM, 'Name', 'FLAM')
elements.property(elements.AU3FGEN_PT_FLAM, 'Description', 'Flammable Substance.')
elements.property(elements.AU3FGEN_PT_FLAM, 'Color', '0xFF8200')
elements.property(elements.AU3FGEN_PT_FLAM, 'MenuSection', '5')
elements.property(elements.AU3FGEN_PT_FLAM, 'Gravity', '0.3')
elements.property(elements.AU3FGEN_PT_FLAM, 'Flammable', '90')
elements.property(elements.AU3FGEN_PT_FLAM, 'Explosive', '0')
elements.property(elements.AU3FGEN_PT_FLAM, 'Loss', '0')
elements.property(elements.AU3FGEN_PT_FLAM, 'AirLoss', '1')
elements.property(elements.AU3FGEN_PT_FLAM, 'AirDrag', '0')
elements.property(elements.AU3FGEN_PT_FLAM, 'Advection', '1')
elements.property(elements.AU3FGEN_PT_FLAM, 'Weight', '1')
elements.property(elements.AU3FGEN_PT_FLAM, 'Diffusion', '5')
elements.property(elements.AU3FGEN_PT_FLAM, 'Falldown', '0')
local g = function(i, x, y, s, n)
--Update Function
end 
tpt.element_func(g, tpt.element('FLAM'))
local g = function(i, r, g, b)
local cola, colr, colg, colb, firea, firer, fireg, fireb
cola = 255 -- Alpha 
colr = 255 -- Red 
colg = 130 -- Green 
colb = 0 -- Blue 
firea = 255 -- Alpha Glow 
firer = 255 -- Red Glow 
fireg = 255 -- Green Glow 
fireb = 255 -- Blue Glow 
--See Pixel Mode Values Table for more info
return 0, 0x00000001, cola, colr, colg, colb, firea, firer, fireg, fireb
end 
tpt.graphics_func(g, tpt.element('FLAM'))

elements.allocate('AU3FGEN', 'HOT')
elements.element(elements.AU3FGEN_PT_HOT, elements.element(elements.DEFAULT_PT_BCOL))
elements.property(elements.AU3FGEN_PT_HOT, 'Name', 'HOT')
elements.property(elements.AU3FGEN_PT_HOT, 'Description', 'Hot Matter, Spawns at MAX Temperature.')
elements.property(elements.AU3FGEN_PT_HOT, 'Color', '0xFF0085')
elements.property(elements.AU3FGEN_PT_HOT, 'MenuSection', '11')
elements.property(elements.AU3FGEN_PT_HOT, 'Gravity', '0.2')
elements.property(elements.AU3FGEN_PT_HOT, 'Flammable', '10')
elements.property(elements.AU3FGEN_PT_HOT, 'Explosive', '0')
elements.property(elements.AU3FGEN_PT_HOT, 'Loss', '0')
elements.property(elements.AU3FGEN_PT_HOT, 'AirLoss', '1')
elements.property(elements.AU3FGEN_PT_HOT, 'AirDrag', '0')
elements.property(elements.AU3FGEN_PT_HOT, 'Advection', '1')
elements.property(elements.AU3FGEN_PT_HOT, 'Weight', '20')
elements.property(elements.AU3FGEN_PT_HOT, 'Diffusion', '2')
elements.property(elements.AU3FGEN_PT_HOT, 'Falldown', '0')
elements.property(elements.AU3FGEN_PT_HOT, 'Temperature', '9999')
local g = function(i, x, y, s, n)
--Update Function
end 
tpt.element_func(g, tpt.element('HOT'))
local g = function(i, r, g, b)
local cola, colr, colg, colb, firea, firer, fireg, fireb
cola = 255 -- Alpha 
colr = 255 -- Red 
colg = 0 -- Green 
colb = 30-- Blue 
firea = 255 -- Alpha Glow 
firer = 255 -- Red Glow 
fireg = 255 -- Green Glow 
fireb = 255 -- Blue Glow 
--See Pixel Mode Values Table for more info
return 0, 0x00000001, cola, colr, colg, colb, firea, firer, fireg, fireb
end 
tpt.graphics_func(g, tpt.element('HOT'))

elements.allocate('AU3FGEN', 'ANTI')
elements.element(elements.AU3FGEN_PT_ANTI, elements.element(elements.DEFAULT_PT_BCOL))
elements.property(elements.AU3FGEN_PT_ANTI, 'Name', 'ANTI')
elements.property(elements.AU3FGEN_PT_ANTI, 'Description', 'Anti-gravity Powder.')
elements.property(elements.AU3FGEN_PT_ANTI, 'Color', '0xFFFFFF')
elements.property(elements.AU3FGEN_PT_ANTI, 'MenuSection', '11')
elements.property(elements.AU3FGEN_PT_ANTI, 'Gravity', '-1')
elements.property(elements.AU3FGEN_PT_ANTI, 'Flammable', '0')
elements.property(elements.AU3FGEN_PT_ANTI, 'Explosive', '0')
elements.property(elements.AU3FGEN_PT_ANTI, 'Loss', '0')
elements.property(elements.AU3FGEN_PT_ANTI, 'AirLoss', '1')
elements.property(elements.AU3FGEN_PT_ANTI, 'AirDrag', '0')
elements.property(elements.AU3FGEN_PT_ANTI, 'Advection', '1')
elements.property(elements.AU3FGEN_PT_ANTI, 'Weight', '0')
elements.property(elements.AU3FGEN_PT_ANTI, 'Diffusion', '0')
elements.property(elements.AU3FGEN_PT_ANTI, 'Falldown', '1')
local g = function(i, x, y, s, n)
--Update Function
end 
tpt.element_func(g, tpt.element('ANTI'))
local g = function(i, r, g, b)
local cola, colr, colg, colb, firea, firer, fireg, fireb
cola = 255 -- Alpha 
colr = 255 -- Red 
colg = 255 -- Green 
colb = 255 -- Blue 
firea = 255 -- Alpha Glow 
firer = 255 -- Red Glow 
fireg = 255 -- Green Glow 
fireb = 255 -- Blue Glow 
--See Pixel Mode Values Table for more info
return 0, 0x00000001, cola, colr, colg, colb, firea, firer, fireg, fireb
end 
tpt.graphics_func(g, tpt.element('ANTI'))

elements.allocate('AU3FGEN', 'LAGR')
elements.element(elements.AU3FGEN_PT_LAGR, elements.element(elements.DEFAULT_PT_BCOL))
elements.property(elements.AU3FGEN_PT_LAGR, 'Name', 'CRAZ')
elements.property(elements.AU3FGEN_PT_LAGR, 'Description', 'I HAVE NO IDEA!')
elements.property(elements.AU3FGEN_PT_LAGR, 'Color', '0xFF0014')
elements.property(elements.AU3FGEN_PT_LAGR, 'MenuSection', '11')
elements.property(elements.AU3FGEN_PT_LAGR, 'Gravity', '9999999999')
elements.property(elements.AU3FGEN_PT_LAGR, 'Flammable', '9999999999')
elements.property(elements.AU3FGEN_PT_LAGR, 'Explosive', '1')
elements.property(elements.AU3FGEN_PT_LAGR, 'Loss', '999')
elements.property(elements.AU3FGEN_PT_LAGR, 'AirLoss', '99999999999')
elements.property(elements.AU3FGEN_PT_LAGR, 'AirDrag', '999999999999')
elements.property(elements.AU3FGEN_PT_LAGR, 'Advection', '99999999999999')
elements.property(elements.AU3FGEN_PT_LAGR, 'Weight', '99999999999999')
elements.property(elements.AU3FGEN_PT_LAGR, 'Diffusion', '999999999999999999')
elements.property(elements.AU3FGEN_PT_LAGR, 'Falldown', '0')
local g = function(i, x, y, s, n)
--Update Function
end 
tpt.element_func(g, elements.AU3FGEN_PT_LAGR)
local g = function(i, r, g, b)
local cola, colr, colg, colb, firea, firer, fireg, fireb
cola = 255 -- Alpha 
colr = 0 -- Red 
colg = 0 -- Green 
colb = 100 -- Blue 
firea = 255 -- Alpha Glow 
firer = 255 -- Red Glow 
fireg = 255 -- Green Glow 
fireb = 255 -- Blue Glow 
--See Pixel Mode Values Table for more info
return 0, 0x00000001, cola, colr, colg, colb, firea, firer, fireg, fireb
end 
tpt.graphics_func(g, elements.AU3FGEN_PT_LAGR)

elements.allocate('AU3FGEN', 'ATOM')
elements.element(elements.AU3FGEN_PT_ATOM, elements.element(elements.DEFAULT_PT_BCOL))
elements.property(elements.AU3FGEN_PT_ATOM, 'Name', 'HRDT')
elements.property(elements.AU3FGEN_PT_ATOM, 'Description', 'Hardened Titainium, Extremely tough, Virtually indestructable. ')
elements.property(elements.AU3FGEN_PT_ATOM, 'Color', '0x3B425C')
elements.property(elements.AU3FGEN_PT_ATOM, 'MenuSection', '11')
elements.property(elements.AU3FGEN_PT_ATOM, 'Gravity', '0')
elements.property(elements.AU3FGEN_PT_ATOM, 'Flammable', '0.5')
elements.property(elements.AU3FGEN_PT_ATOM, 'Explosive', '0')
elements.property(elements.AU3FGEN_PT_ATOM, 'Loss', '0')
elements.property(elements.AU3FGEN_PT_ATOM, 'AirLoss', '0')
elements.property(elements.AU3FGEN_PT_ATOM, 'AirDrag', '0')
elements.property(elements.AU3FGEN_PT_ATOM, 'Advection', '0')
elements.property(elements.AU3FGEN_PT_ATOM, 'Weight', '99999999999999999999')
elements.property(elements.AU3FGEN_PT_ATOM, 'Diffusion', '0')
elements.property(elements.AU3FGEN_PT_ATOM, 'Falldown', '0')
local g = function(i, x, y, s, n)
--Update Function
end 
tpt.element_func(g, elements.AU3FGEN_PT_ATOM)
local g = function(i, r, g, b)
local cola, colr, colg, colb, firea, firer, fireg, fireb
cola = 255 -- Alpha 
colr = 59 -- Red 
colg = 66 -- Green 
colb = 92 -- Blue 
firea = 255 -- Alpha Glow 
firer = 255 -- Red Glow 
fireg = 255 -- Green Glow 
fireb = 255 -- Blue Glow 
--See Pixel Mode Values Table for more info
return 0, 0x00000001, cola, colr, colg, colb, firea, firer, fireg, fireb
end 
tpt.graphics_func(g, elements.AU3FGEN_PT_ATOM)

elements.allocate('AU3FGEN', 'ABAC')
elements.element(elements.AU3FGEN_PT_ABAC, elements.element(elements.DEFAULT_PT_BCOL))
elements.property(elements.AU3FGEN_PT_ABAC, 'Name', 'ABAC')
elements.property(elements.AU3FGEN_PT_ABAC, 'Description', 'Abacfranite. i made the name. dont use!')
elements.property(elements.AU3FGEN_PT_ABAC, 'Color', '0x8F9E5E')
elements.property(elements.AU3FGEN_PT_ABAC, 'MenuSection', '5')
elements.property(elements.AU3FGEN_PT_ABAC, 'Gravity', '5')
elements.property(elements.AU3FGEN_PT_ABAC, 'Flammable', '80')
elements.property(elements.AU3FGEN_PT_ABAC, 'Explosive', '2')
elements.property(elements.AU3FGEN_PT_ABAC, 'Loss', '22')
elements.property(elements.AU3FGEN_PT_ABAC, 'AirLoss', '9')
elements.property(elements.AU3FGEN_PT_ABAC, 'AirDrag', '999')
elements.property(elements.AU3FGEN_PT_ABAC, 'Advection', '999')
elements.property(elements.AU3FGEN_PT_ABAC, 'Weight', '99999')
elements.property(elements.AU3FGEN_PT_ABAC, 'Diffusion', '99')
elements.property(elements.AU3FGEN_PT_ABAC, 'Falldown', '1')
local g = function(i, x, y, s, n)
--Update Function
end 
tpt.element_func(g, tpt.element('ABAC'))
local g = function(i, r, g, b)
local cola, colr, colg, colb, firea, firer, fireg, fireb
cola = 255 -- Alpha 
colr = 255 -- Red 
colg = 255 -- Green 
colb = 255 -- Blue 
firea = 255 -- Alpha Glow 
firer = 255 -- Red Glow 
fireg = 255 -- Green Glow 
fireb = 255 -- Blue Glow 
--See Pixel Mode Values Table for more info
return 0, 0x00000001, cola, colr, colg, colb, firea, firer, fireg, fireb
end 
tpt.graphics_func(g, tpt.element('ABAC'))

elements.allocate('AU3FGEN', 'MUD')
elements.element(elements.AU3FGEN_PT_MUD, elements.element(elements.DEFAULT_PT_BCOL))
elements.property(elements.AU3FGEN_PT_MUD, 'Name', 'MUD')
elements.property(elements.AU3FGEN_PT_MUD, 'Description', 'Watery DIRT')
elements.property(elements.AU3FGEN_PT_MUD, 'Color', '0x827059')
elements.property(elements.AU3FGEN_PT_MUD, 'MenuSection', '7')
elements.property(elements.AU3FGEN_PT_MUD, 'Gravity', '0.3')
elements.property(elements.AU3FGEN_PT_MUD, 'Flammable', '3')
elements.property(elements.AU3FGEN_PT_MUD, 'Explosive', '0')
elements.property(elements.AU3FGEN_PT_MUD, 'Loss', '0')
elements.property(elements.AU3FGEN_PT_MUD, 'AirLoss', '1')
elements.property(elements.AU3FGEN_PT_MUD, 'AirDrag', '0')
elements.property(elements.AU3FGEN_PT_MUD, 'Advection', '1')
elements.property(elements.AU3FGEN_PT_MUD, 'Weight', '0.5')
elements.property(elements.AU3FGEN_PT_MUD, 'Diffusion', '0')
elements.property(elements.AU3FGEN_PT_MUD, 'Falldown', '2')
local g = function(i, x, y, s, n)
--Update Function
end 
tpt.element_func(g, tpt.element('MUD'))
local g = function(i, r, g, b)
local cola, colr, colg, colb, firea, firer, fireg, fireb
cola = 255 -- Alpha 
colr = 130 -- Red 
colg = 112 -- Green 
colb = 89 -- Blue 
firea = 255 -- Alpha Glow 
firer = 255 -- Red Glow 
fireg = 255 -- Green Glow 
fireb = 255 -- Blue Glow 
--See Pixel Mode Values Table for more info
return 0, 0x00000001, cola, colr, colg, colb, firea, firer, fireg, fireb
end 
tpt.graphics_func(g, tpt.element('MUD'))

elements.allocate('AU3FGEN', 'EXWT')
elements.element(elements.AU3FGEN_PT_EXWT, elements.element(elements.DEFAULT_PT_BCOL))
elements.property(elements.AU3FGEN_PT_EXWT, 'Name', 'EXWT')
elements.property(elements.AU3FGEN_PT_EXWT, 'Description', 'Explosive water.')
elements.property(elements.AU3FGEN_PT_EXWT, 'Color', '0x0000B0')
elements.property(elements.AU3FGEN_PT_EXWT, 'MenuSection', '7')
elements.property(elements.AU3FGEN_PT_EXWT, 'Gravity', '0.5')
elements.property(elements.AU3FGEN_PT_EXWT, 'Flammable', '50')
elements.property(elements.AU3FGEN_PT_EXWT, 'Explosive', '2')
elements.property(elements.AU3FGEN_PT_EXWT, 'Loss', '0')
elements.property(elements.AU3FGEN_PT_EXWT, 'AirLoss', '1')
elements.property(elements.AU3FGEN_PT_EXWT, 'AirDrag', '0')
elements.property(elements.AU3FGEN_PT_EXWT, 'Advection', '1')
elements.property(elements.AU3FGEN_PT_EXWT, 'Weight', '0.4')
elements.property(elements.AU3FGEN_PT_EXWT, 'Diffusion', '0')
elements.property(elements.AU3FGEN_PT_EXWT, 'Diffusion', '3')
local g = function(i, x, y, s, n)
--Update Function
end 
tpt.element_func(g, tpt.element('EXWT'))
local g = function(i, r, g, b)
local cola, colr, colg, colb, firea, firer, fireg, fireb
cola = 255 -- Alpha 
colr = 0 -- Red 
colg = 0 -- Green 
colb = 255 -- Blue 
firea = 255 -- Alpha Glow 
firer = 255 -- Red Glow 
fireg = 255 -- Green Glow 
fireb = 255 -- Blue Glow 
--See Pixel Mode Values Table for more info
return 0, 0x00000001, cola, colr, colg, colb, firea, firer, fireg, fireb
end 
tpt.graphics_func(g, tpt.element('EXWT'))

elements.allocate('AU3FGEN', 'ROCK')
elements.element(elements.AU3FGEN_PT_ROCK, elements.element(elements.DEFAULT_PT_BCOL))
elements.property(elements.AU3FGEN_PT_ROCK, 'Name', 'ROCK')
elements.property(elements.AU3FGEN_PT_ROCK, 'Description', 'Rocks.')
elements.property(elements.AU3FGEN_PT_ROCK, 'Color', '0x757A78')
elements.property(elements.AU3FGEN_PT_ROCK, 'MenuSection', '8')
elements.property(elements.AU3FGEN_PT_ROCK, 'Gravity', '3')
elements.property(elements.AU3FGEN_PT_ROCK, 'Flammable', '1')
elements.property(elements.AU3FGEN_PT_ROCK, 'Explosive', '0')
elements.property(elements.AU3FGEN_PT_ROCK, 'Loss', '0')
elements.property(elements.AU3FGEN_PT_ROCK, 'AirLoss', '1')
elements.property(elements.AU3FGEN_PT_ROCK, 'AirDrag', '0')
elements.property(elements.AU3FGEN_PT_ROCK, 'Advection', '1')
elements.property(elements.AU3FGEN_PT_ROCK, 'Weight', '20')
elements.property(elements.AU3FGEN_PT_ROCK, 'Diffusion', '0')
elements.property(elements.AU3FGEN_PT_ROCK, 'Falldown', '1')
local g = function(i, x, y, s, n)
--Update Function
end 
tpt.element_func(g, tpt.element('ROCK'))
local g = function(i, r, g, b)
local cola, colr, colg, colb, firea, firer, fireg, fireb
cola = 255 -- Alpha 
colr = 117 -- Red 
colg = 112 -- Green 
colb = 120 -- Blue 
firea = 255 -- Alpha Glow 
firer = 255 -- Red Glow 
fireg = 255 -- Green Glow 
fireb = 255 -- Blue Glow 
--See Pixel Mode Values Table for more info
return 0, 0x00000001, cola, colr, colg, colb, firea, firer, fireg, fireb
end 
tpt.graphics_func(g, tpt.element('ROCK'))

elements.allocate('AU3FGEN', 'XPOO')
elements.element(elements.AU3FGEN_PT_XPOO, elements.element(elements.DEFAULT_PT_BCOL))
elements.property(elements.AU3FGEN_PT_XPOO, 'Name', 'XPOO')
elements.property(elements.AU3FGEN_PT_XPOO, 'Description', 'Explosive Poop...')
elements.property(elements.AU3FGEN_PT_XPOO, 'Color', '0x827561')
elements.property(elements.AU3FGEN_PT_XPOO, 'MenuSection', '5')
elements.property(elements.AU3FGEN_PT_XPOO, 'Gravity', '0.2')
elements.property(elements.AU3FGEN_PT_XPOO, 'Flammable', '50')
elements.property(elements.AU3FGEN_PT_XPOO, 'Explosive', '1')
elements.property(elements.AU3FGEN_PT_XPOO, 'Loss', '0')
elements.property(elements.AU3FGEN_PT_XPOO, 'AirLoss', '1')
elements.property(elements.AU3FGEN_PT_XPOO, 'AirDrag', '0')
elements.property(elements.AU3FGEN_PT_XPOO, 'Advection', '100')
elements.property(elements.AU3FGEN_PT_XPOO, 'Weight', '0')
elements.property(elements.AU3FGEN_PT_XPOO, 'Diffusion', '0')
elements.property(elements.AU3FGEN_PT_XPOO, 'Falldown', '1')
local g = function(i, x, y, s, n)
--Update Function
end 
tpt.element_func(g, tpt.element('XPOO'))
local g = function(i, r, g, b)
local cola, colr, colg, colb, firea, firer, fireg, fireb
cola = 255 -- Alpha 
colr = 130 -- Red 
colg = 117 -- Green 
colb = 97 -- Blue 
firea = 255 -- Alpha Glow 
firer = 255 -- Red Glow 
fireg = 255 -- Green Glow 
fireb = 255 -- Blue Glow 
--See Pixel Mode Values Table for more info
return 0, 0x00000001, cola, colr, colg, colb, firea, firer, fireg, fireb
end 
tpt.graphics_func(g, tpt.element('XPOO'))

elements.allocate('AU3FGEN', 'AIRP')
elements.element(elements.AU3FGEN_PT_AIRP, elements.element(elements.DEFAULT_PT_BCOL))
elements.property(elements.AU3FGEN_PT_AIRP, 'Name', 'AIRP')
elements.property(elements.AU3FGEN_PT_AIRP, 'Description', 'Air Particles, EXTREMELY light.')
elements.property(elements.AU3FGEN_PT_AIRP, 'Color', '0xFFFFFF')
elements.property(elements.AU3FGEN_PT_AIRP, 'MenuSection', '11')
elements.property(elements.AU3FGEN_PT_AIRP, 'Gravity', '0')
elements.property(elements.AU3FGEN_PT_AIRP, 'Flammable', '0')
elements.property(elements.AU3FGEN_PT_AIRP, 'Explosive', '0')
elements.property(elements.AU3FGEN_PT_AIRP, 'Loss', '0')
elements.property(elements.AU3FGEN_PT_AIRP, 'AirLoss', '1')
elements.property(elements.AU3FGEN_PT_AIRP, 'AirDrag', '0')
elements.property(elements.AU3FGEN_PT_AIRP, 'Advection', '1')
elements.property(elements.AU3FGEN_PT_AIRP, 'Weight', '0.1')
elements.property(elements.AU3FGEN_PT_AIRP, 'Diffusion', '1')
elements.property(elements.AU3FGEN_PT_AIRP, 'Falldown', '0')
local g = function(i, x, y, s, n)
--Update Function
end 
tpt.element_func(g, tpt.element('AIRP'))
local g = function(i, r, g, b)
local cola, colr, colg, colb, firea, firer, fireg, fireb
cola = 255 -- Alpha 
colr = 230 -- Red 
colg = 230 -- Green 
colb = 230 -- Blue 
firea = 255 -- Alpha Glow 
firer = 255 -- Red Glow 
fireg = 255 -- Green Glow 
fireb = 255 -- Blue Glow 
--See Pixel Mode Values Table for more info
return 0, 0x00000001, cola, colr, colg, colb, firea, firer, fireg, fireb
end 
tpt.graphics_func(g, tpt.element('AIRP'))

elements.allocate('AU3FGEN', 'IDK')
elements.element(elements.AU3FGEN_PT_IDK, elements.element(elements.DEFAULT_PT_BCOL))
elements.property(elements.AU3FGEN_PT_IDK, 'Name', 'IDK')
elements.property(elements.AU3FGEN_PT_IDK, 'Description', 'I have no idea, because i ran out of ideas.')
elements.property(elements.AU3FGEN_PT_IDK, 'Color', '0xFFC9FF')
elements.property(elements.AU3FGEN_PT_IDK, 'MenuSection', '11')
elements.property(elements.AU3FGEN_PT_IDK, 'Gravity', '0.1')
elements.property(elements.AU3FGEN_PT_IDK, 'Flammable', '5')
elements.property(elements.AU3FGEN_PT_IDK, 'Explosive', '0')
elements.property(elements.AU3FGEN_PT_IDK, 'Loss', '0')
elements.property(elements.AU3FGEN_PT_IDK, 'AirLoss', '1')
elements.property(elements.AU3FGEN_PT_IDK, 'AirDrag', '0')
elements.property(elements.AU3FGEN_PT_IDK, 'Advection', '1')
elements.property(elements.AU3FGEN_PT_IDK, 'Weight', '0')
elements.property(elements.AU3FGEN_PT_IDK, 'Diffusion', '5000')
elements.property(elements.AU3FGEN_PT_IDK, 'Falldown', '0')
local g = function(i, x, y, s, n)
--Update Function
end 
tpt.element_func(g, tpt.element('IDK'))
local g = function(i, r, g, b)
local cola, colr, colg, colb, firea, firer, fireg, fireb
cola = 255 -- Alpha 
colr = 255 -- Red 
colg = 200 -- Green 
colb = 255 -- Blue 
firea = 255 -- Alpha Glow 
firer = 255 -- Red Glow 
fireg = 255 -- Green Glow 
fireb = 255 -- Blue Glow 
--See Pixel Mode Values Table for more info
return 0, 0x00000001, cola, colr, colg, colb, firea, firer, fireg, fireb
end 
tpt.graphics_func(g, tpt.element('IDK'))

elements.allocate('AU3FGEN', 'NAPM')
elements.element(elements.AU3FGEN_PT_NAPM, elements.element(elements.DEFAULT_PT_BCOL))
elements.property(elements.AU3FGEN_PT_NAPM, 'Name', 'NAPM')
elements.property(elements.AU3FGEN_PT_NAPM, 'Description', 'Napalm, Fiery liquid.')
elements.property(elements.AU3FGEN_PT_NAPM, 'Color', '0x910A05')
elements.property(elements.AU3FGEN_PT_NAPM, 'MenuSection', '5')
elements.property(elements.AU3FGEN_PT_NAPM, 'Gravity', '1')
elements.property(elements.AU3FGEN_PT_NAPM, 'Flammable', '35')
elements.property(elements.AU3FGEN_PT_NAPM, 'Explosive', '0')
elements.property(elements.AU3FGEN_PT_NAPM, 'Loss', '0')
elements.property(elements.AU3FGEN_PT_NAPM, 'AirLoss', '1')
elements.property(elements.AU3FGEN_PT_NAPM, 'AirDrag', '0')
elements.property(elements.AU3FGEN_PT_NAPM, 'Advection', '1')
elements.property(elements.AU3FGEN_PT_NAPM, 'Weight', '1')
elements.property(elements.AU3FGEN_PT_NAPM, 'Diffusion', '0')
elements.property(elements.AU3FGEN_PT_NAPM, 'Falldown', '2')
elements.property(elements.AU3FGEN_PT_NAPM, 'Temperature', '340')
local g = function(i, x, y, s, n)
--Update Function
end 
tpt.element_func(g, tpt.element('NAPM'))
local g = function(i, r, g, b)
local cola, colr, colg, colb, firea, firer, fireg, fireb
cola = 255 -- Alpha 
colr = 145 -- Red 
colg = 10 -- Green 
colb = 5 -- Blue 
firea = 255 -- Alpha Glow 
firer = 255 -- Red Glow 
fireg = 0 -- Green Glow 
fireb = 0 -- Blue Glow 
--See Pixel Mode Values Table for more info
return 0, 0x00000001, cola, colr, colg, colb, firea, firer, fireg, fireb
end 
tpt.graphics_func(g, tpt.element('NAPM'))

elements.allocate('AU3FGEN', 'GRAS')
elements.element(elements.AU3FGEN_PT_GRAS, elements.element(elements.DEFAULT_PT_BCOL))
elements.property(elements.AU3FGEN_PT_GRAS, 'Name', 'GRAS')
elements.property(elements.AU3FGEN_PT_GRAS, 'Description', 'Grass. Flammable')
elements.property(elements.AU3FGEN_PT_GRAS, 'Color', '0x00C900')
elements.property(elements.AU3FGEN_PT_GRAS, 'MenuSection', '8')
elements.property(elements.AU3FGEN_PT_GRAS, 'Gravity', '0.7')
elements.property(elements.AU3FGEN_PT_GRAS, 'Flammable', '23')
elements.property(elements.AU3FGEN_PT_GRAS, 'Explosive', '0')
elements.property(elements.AU3FGEN_PT_GRAS, 'Loss', '0')
elements.property(elements.AU3FGEN_PT_GRAS, 'AirLoss', '1')
elements.property(elements.AU3FGEN_PT_GRAS, 'AirDrag', '0')
elements.property(elements.AU3FGEN_PT_GRAS, 'Advection', '1')
elements.property(elements.AU3FGEN_PT_GRAS, 'Weight', '1')
elements.property(elements.AU3FGEN_PT_GRAS, 'Diffusion', '0')
elements.property(elements.AU3FGEN_PT_GRAS, 'Falldown', '0')
local g = function(i, x, y, s, n)
--Update Function
end 
tpt.element_func(g, tpt.element('GRAS'))
local g = function(i, r, g, b)
local cola, colr, colg, colb, firea, firer, fireg, fireb
cola = 255 -- Alpha 
colr = 0 -- Red 
colg = 201 -- Green 
colb = 0 -- Blue 
firea = 255 -- Alpha Glow 
firer = 255 -- Red Glow 
fireg = 255 -- Green Glow 
fireb = 255 -- Blue Glow 
--See Pixel Mode Values Table for more info
return 0, 0x00000001, cola, colr, colg, colb, firea, firer, fireg, fireb
end 
tpt.graphics_func(g, tpt.element('GRAS'))

elements.allocate('AU3FGEN', 'WELD')
elements.element(elements.AU3FGEN_PT_WELD, elements.element(elements.DEFAULT_PT_BCOL))
elements.property(elements.AU3FGEN_PT_WELD, 'Name', 'VOLI')
elements.property(elements.AU3FGEN_PT_WELD, 'Description', 'Volitile Matter, Has about a 99.99.99.99% chance to explode instantly and destroy the earth, have FUN!!.')
elements.property(elements.AU3FGEN_PT_WELD, 'Color', '0xFF0075')
elements.property(elements.AU3FGEN_PT_WELD, 'MenuSection', '10')
elements.property(elements.AU3FGEN_PT_WELD, 'Gravity', '1')
elements.property(elements.AU3FGEN_PT_WELD, 'Flammable', '20')
elements.property(elements.AU3FGEN_PT_WELD, 'Explosive', '0')
elements.property(elements.AU3FGEN_PT_WELD, 'Loss', '2')
elements.property(elements.AU3FGEN_PT_WELD, 'AirLoss', '5')
elements.property(elements.AU3FGEN_PT_WELD, 'AirDrag', '10')
elements.property(elements.AU3FGEN_PT_WELD, 'Advection', '3')
elements.property(elements.AU3FGEN_PT_WELD, 'Weight', '999999')
elements.property(elements.AU3FGEN_PT_WELD, 'Diffusion', '0')
elements.property(elements.AU3FGEN_PT_WELD, 'Falldown', '1')
elements.property(elements.AU3FGEN_PT_WELD, 'Temperature', '9999')
local g = function(i, x, y, s, n)
--Update Function
end 
tpt.element_func(g, tpt.element('VOLI'))
local g = function(i, r, g, b)
local cola, colr, colg, colb, firea, firer, fireg, fireb
cola = 255 -- Alpha 
colr = 255 -- Red 
colg = 0 -- Green 
colb = 120 -- Blue 
firea = 255 -- Alpha Glow 
firer = 255 -- Red Glow 
fireg = 255 -- Green Glow 
fireb = 255 -- Blue Glow 
--See Pixel Mode Values Table for more info
return 0, 0x00000001, cola, colr, colg, colb, firea, firer, fireg, fireb
end 
tpt.graphics_func(g, tpt.element('VOLI'))

elements.allocate('AU3FGEN', 'DIRT')
elements.element(elements.AU3FGEN_PT_DIRT, elements.element(elements.DEFAULT_PT_BCOL))
elements.property(elements.AU3FGEN_PT_DIRT, 'Name', 'DIRT')
elements.property(elements.AU3FGEN_PT_DIRT, 'Description', 'Dirt.')
elements.property(elements.AU3FGEN_PT_DIRT, 'Color', '0x915900')
elements.property(elements.AU3FGEN_PT_DIRT, 'MenuSection', '8')
elements.property(elements.AU3FGEN_PT_DIRT, 'Gravity', '1')
elements.property(elements.AU3FGEN_PT_DIRT, 'Flammable', '6')
elements.property(elements.AU3FGEN_PT_DIRT, 'Explosive', '0')
elements.property(elements.AU3FGEN_PT_DIRT, 'Loss', '0')
elements.property(elements.AU3FGEN_PT_DIRT, 'AirLoss', '1')
elements.property(elements.AU3FGEN_PT_DIRT, 'AirDrag', '0')
elements.property(elements.AU3FGEN_PT_DIRT, 'Advection', '1')
elements.property(elements.AU3FGEN_PT_DIRT, 'Weight', '3')
elements.property(elements.AU3FGEN_PT_DIRT, 'Diffusion', '0')
elements.property(elements.AU3FGEN_PT_DIRT, 'Diffusion', '1')
local g = function(i, x, y, s, n)
--Update Function
end 
tpt.element_func(g, tpt.element('DIRT'))
local g = function(i, r, g, b)
local cola, colr, colg, colb, firea, firer, fireg, fireb
cola = 255 -- Alpha 
colr = 145 -- Red 
colg = 89 -- Green 
colb = 0 -- Blue 
firea = 255 -- Alpha Glow 
firer = 255 -- Red Glow 
fireg = 255 -- Green Glow 
fireb = 255 -- Blue Glow 
--See Pixel Mode Values Table for more info
return 0, 0x00000001, cola, colr, colg, colb, firea, firer, fireg, fireb
end 
tpt.graphics_func(g, tpt.element('DIRT'))

elements.allocate('AU3FGEN', 'POWD')
elements.element(elements.AU3FGEN_PT_POWD, elements.element(elements.DEFAULT_PT_BCOL))
elements.property(elements.AU3FGEN_PT_POWD, 'Name', 'POWD')
elements.property(elements.AU3FGEN_PT_POWD, 'Description', 'Powder, useless powder')
elements.property(elements.AU3FGEN_PT_POWD, 'Color', '0xFFFFFF')
elements.property(elements.AU3FGEN_PT_POWD, 'MenuSection', '8')
elements.property(elements.AU3FGEN_PT_POWD, 'Gravity', '3')
elements.property(elements.AU3FGEN_PT_POWD, 'Flammable', '0')
elements.property(elements.AU3FGEN_PT_POWD, 'Explosive', '0')
elements.property(elements.AU3FGEN_PT_POWD, 'Loss', '0')
elements.property(elements.AU3FGEN_PT_POWD, 'AirLoss', '1')
elements.property(elements.AU3FGEN_PT_POWD, 'AirDrag', '0')
elements.property(elements.AU3FGEN_PT_POWD, 'Advection', '1')
elements.property(elements.AU3FGEN_PT_POWD, 'Weight', '2')
elements.property(elements.AU3FGEN_PT_POWD, 'Diffusion', '0')
elements.property(elements.AU3FGEN_PT_POWD, 'Diffusion', '1')
local g = function(i, x, y, s, n)
--Update Function
end 
tpt.element_func(g, tpt.element('POWD'))
local g = function(i, r, g, b)
local cola, colr, colg, colb, firea, firer, fireg, fireb
cola = 255 -- Alpha 
colr = 255 -- Red 
colg = 255 -- Green 
colb = 255 -- Blue 
firea = 255 -- Alpha Glow 
firer = 255 -- Red Glow 
fireg = 255 -- Green Glow 
fireb = 255 -- Blue Glow 
--See Pixel Mode Values Table for more info
return 0, 0x00000001, cola, colr, colg, colb, firea, firer, fireg, fireb
end 
tpt.graphics_func(g, tpt.element('POWD'))

elements.allocate('AU3FGEN', 'LAST')
elements.element(elements.AU3FGEN_PT_LAST, elements.element(elements.DEFAULT_PT_BCOL))
elements.property(elements.AU3FGEN_PT_LAST, 'Name', 'LAST')
elements.property(elements.AU3FGEN_PT_LAST, 'Description', 'THE VERY LAST ELEMENT IN THIS PACK!!!! ')
elements.property(elements.AU3FGEN_PT_LAST, 'Color', '0x6E876E')
elements.property(elements.AU3FGEN_PT_LAST, 'MenuSection', '11')
elements.property(elements.AU3FGEN_PT_LAST, 'Gravity', '100')
elements.property(elements.AU3FGEN_PT_LAST, 'Flammable', '0')
elements.property(elements.AU3FGEN_PT_LAST, 'Explosive', '0')
elements.property(elements.AU3FGEN_PT_LAST, 'Loss', '0')
elements.property(elements.AU3FGEN_PT_LAST, 'AirLoss', '1')
elements.property(elements.AU3FGEN_PT_LAST, 'AirDrag', '0')
elements.property(elements.AU3FGEN_PT_LAST, 'Advection', '1')
elements.property(elements.AU3FGEN_PT_LAST, 'Weight', '1')
elements.property(elements.AU3FGEN_PT_LAST, 'Diffusion', '5')
elements.property(elements.AU3FGEN_PT_LAST, 'Falldown', '1')
local g = function(i, x, y, s, n)
--Update Function
end 
tpt.element_func(g, tpt.element('LAST'))
local g = function(i, r, g, b)
local cola, colr, colg, colb, firea, firer, fireg, fireb
cola = 255 -- Alpha 
colr = 110 -- Red 
colg = 135 -- Green 
colb = 110 -- Blue 
firea = 255 -- Alpha Glow 
firer = 255 -- Red Glow 
fireg = 255 -- Green Glow 
fireb = 255 -- Blue Glow 
--See Pixel Mode Values Table for more info
return 0, 0x00000001, cola, colr, colg, colb, firea, firer, fireg, fireb
end 
tpt.graphics_func(g, tpt.element('LAST'))

elements.allocate('AU3FGEN', 'RAZE')
elements.element(elements.AU3FGEN_PT_RAZE, elements.element(elements.DEFAULT_PT_BCOL))
elements.property(elements.AU3FGEN_PT_RAZE, 'Name', 'RAZE')
elements.property(elements.AU3FGEN_PT_RAZE, 'Description', 'Razers, Shreds anyone below.')
elements.property(elements.AU3FGEN_PT_RAZE, 'Color', '0x82827F')
elements.property(elements.AU3FGEN_PT_RAZE, 'MenuSection', '8')
elements.property(elements.AU3FGEN_PT_RAZE, 'Gravity', '50')
elements.property(elements.AU3FGEN_PT_RAZE, 'Flammable', '100')
elements.property(elements.AU3FGEN_PT_RAZE, 'Explosive', '0')
elements.property(elements.AU3FGEN_PT_RAZE, 'Loss', '0')
elements.property(elements.AU3FGEN_PT_RAZE, 'AirLoss', '1')
elements.property(elements.AU3FGEN_PT_RAZE, 'AirDrag', '0')
elements.property(elements.AU3FGEN_PT_RAZE, 'Advection', '1')
elements.property(elements.AU3FGEN_PT_RAZE, 'Weight', '5000')
elements.property(elements.AU3FGEN_PT_RAZE, 'Diffusion', '1')
elements.property(elements.AU3FGEN_PT_RAZE, 'Falldown', '0')
local g = function(i, x, y, s, n)
--Update Function
end 
tpt.element_func(g, tpt.element('RAZE'))
local g = function(i, r, g, b)
local cola, colr, colg, colb, firea, firer, fireg, fireb
cola = 255 -- Alpha 
colr = 255 -- Red 
colg = 255 -- Green 
colb = 255 -- Blue 
firea = 255 -- Alpha Glow 
firer = 255 -- Red Glow 
fireg = 255 -- Green Glow 
fireb = 255 -- Blue Glow 
--See Pixel Mode Values Table for more info
return 0, 0x00000001, cola, colr, colg, colb, firea, firer, fireg, fireb
end 
tpt.graphics_func(g, tpt.element('RAZE'))

elements.allocate('AU3FGEN', 'MOLD')
elements.element(elements.AU3FGEN_PT_MOLD, elements.element(elements.DEFAULT_PT_BCOL))
elements.property(elements.AU3FGEN_PT_MOLD, 'Name', 'MOLD')
elements.property(elements.AU3FGEN_PT_MOLD, 'Description', 'Molds. ')
elements.property(elements.AU3FGEN_PT_MOLD, 'Color', '0xD6D6E3')
elements.property(elements.AU3FGEN_PT_MOLD, 'MenuSection', '0')
elements.property(elements.AU3FGEN_PT_MOLD, 'Gravity', '0')
elements.property(elements.AU3FGEN_PT_MOLD, 'Flammable', '0')
elements.property(elements.AU3FGEN_PT_MOLD, 'Explosive', '0')
elements.property(elements.AU3FGEN_PT_MOLD, 'Loss', '0')
elements.property(elements.AU3FGEN_PT_MOLD, 'AirLoss', '1')
elements.property(elements.AU3FGEN_PT_MOLD, 'AirDrag', '0')
elements.property(elements.AU3FGEN_PT_MOLD, 'Advection', '2')
elements.property(elements.AU3FGEN_PT_MOLD, 'Weight', '50')
elements.property(elements.AU3FGEN_PT_MOLD, 'Diffusion', '0')
elements.property(elements.AU3FGEN_PT_MOLD, 'Falldown', '0')
local g = function(i, x, y, s, n)
--Update Function
end 
tpt.element_func(g, tpt.element('MOLD'))
local g = function(i, r, g, b)
local cola, colr, colg, colb, firea, firer, fireg, fireb
cola = 255 -- Alpha 
colr = 255 -- Red 
colg = 255 -- Green 
colb = 255 -- Blue 
firea = 255 -- Alpha Glow 
firer = 255 -- Red Glow 
fireg = 255 -- Green Glow 
fireb = 255 -- Blue Glow 
--See Pixel Mode Values Table for more info
return 0, 0x00000001, cola, colr, colg, colb, firea, firer, fireg, fireb
end 
tpt.graphics_func(g, tpt.element('MOLD'))

elements.allocate('AU3FGEN', 'ZAK')
elements.element(elements.AU3FGEN_PT_ZAK, elements.element(elements.DEFAULT_PT_BCOL))
elements.property(elements.AU3FGEN_PT_ZAK, 'Name', 'ZAK')
elements.property(elements.AU3FGEN_PT_ZAK, 'Description', 'Scatters to top and bottom.')
elements.property(elements.AU3FGEN_PT_ZAK, 'Color', '0xFFFF00')
elements.property(elements.AU3FGEN_PT_ZAK, 'MenuSection', '12')
elements.property(elements.AU3FGEN_PT_ZAK, 'Gravity', '1000')
elements.property(elements.AU3FGEN_PT_ZAK, 'Flammable', '10')
elements.property(elements.AU3FGEN_PT_ZAK, 'Explosive', '0')
elements.property(elements.AU3FGEN_PT_ZAK, 'Loss', '20')
elements.property(elements.AU3FGEN_PT_ZAK, 'AirLoss', '1')
elements.property(elements.AU3FGEN_PT_ZAK, 'AirDrag', '1')
elements.property(elements.AU3FGEN_PT_ZAK, 'Advection', '0')
elements.property(elements.AU3FGEN_PT_ZAK, 'Weight', '99')
elements.property(elements.AU3FGEN_PT_ZAK, 'Diffusion', '1')
elements.property(elements.AU3FGEN_PT_ZAK, 'Falldown', '1')
local g = function(i, x, y, s, n)
--Update Function
end 
tpt.element_func(g, tpt.element('ZAK'))
local g = function(i, r, g, b)
local cola, colr, colg, colb, firea, firer, fireg, fireb
cola = 255 -- Alpha 
colr = 70 -- Red 
colg = 50 -- Green 
colb = 0 -- Blue 
firea = 255 -- Alpha Glow 
firer = 255 -- Red Glow 
fireg = 255 -- Green Glow 
fireb = 255 -- Blue Glow 
--See Pixel Mode Values Table for more info
return 0, 0x00000001, cola, colr, colg, colb, firea, firer, fireg, fireb
end 
tpt.graphics_func(g, tpt.element('ZAK'))

elements.allocate('AU3FGEN', 'EXPW')
elements.element(elements.AU3FGEN_PT_EXPW, elements.element(elements.DEFAULT_PT_BCOL))
elements.property(elements.AU3FGEN_PT_EXPW, 'Name', 'EXPW')
elements.property(elements.AU3FGEN_PT_EXPW, 'Description', 'Explosive powder, like GUN')
elements.property(elements.AU3FGEN_PT_EXPW, 'Color', '0xBFBFBF')
elements.property(elements.AU3FGEN_PT_EXPW, 'MenuSection', '8')
elements.property(elements.AU3FGEN_PT_EXPW, 'Gravity', '5')
elements.property(elements.AU3FGEN_PT_EXPW, 'Flammable', '40')
elements.property(elements.AU3FGEN_PT_EXPW, 'Explosive', '1')
elements.property(elements.AU3FGEN_PT_EXPW, 'Loss', '0')
elements.property(elements.AU3FGEN_PT_EXPW, 'AirLoss', '1')
elements.property(elements.AU3FGEN_PT_EXPW, 'AirDrag', '0')
elements.property(elements.AU3FGEN_PT_EXPW, 'Advection', '1')
elements.property(elements.AU3FGEN_PT_EXPW, 'Weight', '1')
elements.property(elements.AU3FGEN_PT_EXPW, 'Diffusion', '0')
elements.property(elements.AU3FGEN_PT_EXPW, 'Diffusion', '1')
local g = function(i, x, y, s, n)
--Update Function
end 
tpt.element_func(g, tpt.element('EXPW'))
local g = function(i, r, g, b)
local cola, colr, colg, colb, firea, firer, fireg, fireb
cola = 255 -- Alpha 
colr = 255 -- Red 
colg = 255 -- Green 
colb = 255 -- Blue 
firea = 255 -- Alpha Glow 
firer = 255 -- Red Glow 
fireg = 255 -- Green Glow 
fireb = 255 -- Blue Glow 
--See Pixel Mode Values Table for more info
return 0, 0x00000001, cola, colr, colg, colb, firea, firer, fireg, fireb
end 
tpt.graphics_func(g, tpt.element('EXPW'))