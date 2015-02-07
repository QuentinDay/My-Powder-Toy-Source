
local Rust = elements.allocate("Damian97" , "RTBM")
elements.element(Rust, elements.element(elements.DEFAULT_PT_EMP))
elements.property(Rust, "Name" , "RTBM")
elements.property(Rust, "HeatConduct" , 0)
elements.property(Rust, "MenuSection", elem.SC_NUCLEAR)
elements.property(Rust, "Description" , "Bomb, that after explosion turns everything into BMTL.")
elements.property(Rust, "Color", "0xFFC75454")
local nnm = 0

function Rustbomb(i,x,y,s,n)
	tpt.set_property('type', 'none', 'rtbm')
	local rx = 4
	local ry = 4

	while ry < 380 do
	local f = tpt.get_property("type", rx, ry)
		if f ~= 0 then
		local n = tpt.get_property("dcolour", rx, ry)
			if elem.property(f, "State") <= 1 and elem.property(f, "Falldown") == 0 and f ~= 127 and f ~= 175 and f ~= 105 and f ~= 87 then
				if n == 0 then
					local r,g,b = gfx.getColors(elem.property(f, "Color"))
					tpt.set_property('dcolor', gfx.getHexColor(r,g,b,255), rx, ry)
				end
				tpt.set_property('type', "BMTL", rx, ry)
				tpt.set_property('tmp', 1, rx, ry)
			end
		end
		if rx == 607 then
			rx = 0
			ry = ry + 1
			else
			rx = rx + 1
		end 
	end

	if nnm == 0 then
		nnm = 75
		tpt.register_step(Emp)
	end
end
 
 function Emp()
 
	if nnm == 0 then
		tpt.unregister_step(emp)
		return
	end
	
	gfx.fillRect(-1,-1, sim.XRES, sim.YRES, 99, 101, 255, nnm)
	nnm = nnm - 1
end
 
tpt.element_func(Rustbomb,Rust)