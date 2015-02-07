
local jmod = tpt.version.jacobs_mod --my mod has PROP_POWERED and makes things much simpler
if elem.JACOB1_PT_PBHL then elem.free(elem.JACOB1_PT_PBHL) end --don't error with "Identifier already in use"
if elem.JACOB1_PT_PWHL then elem.free(elem.JACOB1_PT_PWHL) end --don't error with "Identifier already in use"

local PBHL = elem.allocate("JACOB1", "PBHL")
elem.element(PBHL, elem.element(elem.DEFAULT_PT_NBHL))
elem.property(PBHL, "Name", "PBHL")
elem.property(PBHL, "Description", "Powered black hole.")
elem.property(PBHL, "MenuSection", elem.SC_POWERED)
if jmod then
	elem.property(PBHL, "Properties", elem.property(PBHL, "Properties") + elem.PROP_POWERED)
end

local PWHL = elem.allocate("JACOB1", "PWHL")
elem.element(PWHL, elem.element(elem.DEFAULT_PT_NWHL))
elem.property(PWHL, "Name", "PWHL")
elem.property(PWHL, "Description", "Powered white hole.")
elem.property(PWHL, "MenuSection", elem.SC_POWERED)
if jmod then
	elem.property(PWHL, "Properties", elem.property(PWHL, "Properties") + elem.PROP_POWERED)
end

local function update(i,x,y,s,n)
	local life = sim.partProperty(i, sim.FIELD_LIFE)
	local itype = sim.partProperty(i, sim.FIELD_TYPE)
	if life == 10 then
		local amount = 1.5 --normal BHOL is .1, use 1.5 here because we can't add .1 to the current gravity, we can only set exact values
		local tmp = sim.partProperty(i, sim.FIELD_TMP) --tmp affects strength
		if tmp > 0 then
			amount = .015*tmp
			if amount < 1.5 then amount = 1.5
			elseif amount > 768 then amount = 768 end
		end
		sim.gravMap(x/4, y/4, itype == PBHL and amount or -amount)

		for r in sim.neighbors(x,y,1,1) do --loop through neighbors for things to kill or (if not my mod) things that turn it off
			local rtype = sim.partProperty(r, sim.FIELD_TYPE)
			if not jmod then
				if rtype == itype and sim.partProperty(r, sim.FIELD_LIFE) == 9 then
					sim.partProperty(i, sim.FIELD_LIFE, 9)
				elseif rtype == tpt.el.sprk.id and sim.partProperty(r, sim.FIELD_CTYPE) == tpt.el.nscn.id then
					sim.partProperty(i, sim.FIELD_LIFE, 9)
				end
			end
			if itype == PBHL and rtype ~= itype and bit.band(elem.property(rtype, "Properties"), 0x1F) ~= 4 then
				sim.partKill(r)
			end
		end
	elseif not jmod then
		if life > 0 then sim.partProperty(i, sim.FIELD_LIFE, life-1) return end --decrease life by 1 every frame
		for r in sim.neighbors(x,y,1,1) do --loop through neighbors for things to turn it on
			local rtype = sim.partProperty(r, sim.FIELD_TYPE)
			if rtype == itype and sim.partProperty(r, sim.FIELD_LIFE) == 10 then
				sim.partProperty(i, sim.FIELD_LIFE, 10)
			elseif rtype == tpt.el.sprk.id and sim.partProperty(r, sim.FIELD_CTYPE) == tpt.el.pscn.id then
				sim.partProperty(i, sim.FIELD_LIFE, 10)
			end
		end
	end
end
elem.property(PBHL, "Update", update)

local function graphics(i,colr,colg,colb)
	local life = sim.partProperty(i, sim.FIELD_LIFE)
	local divide = life == 10 and 1 or (2.5-life/8)
    return 0,1,255,colr/divide,colg/divide,colb/divide
end
elem.property(PBHL, "Graphics", graphics)


elem.property(PWHL, "Update", update)
elem.property(PWHL, "Graphics", graphics)