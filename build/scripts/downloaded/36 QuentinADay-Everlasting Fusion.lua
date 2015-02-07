
local FusionButton = Button:new(554, 0, 15, 15, "F", "Makes Fusion Infinately Long(Makes HYGN Bombs Much More Powderful")
FusionButton:action(function(sender)
	function growth(i,x,y,s,n)
		local type=tpt.get_property("type",x+math.random(-1,1),y+math.random(-1,1))
		if type==tpt.el.elec.id then
			tpt.parts[i].type=tpt.el.hygn.id
		end
	end
	tpt.element_func(growth,tpt.el.elec.id)
	function growth(i,x,y,s,n)
		local type=tpt.get_property("type",x+math.random(-1,1),y+math.random(-1,1))
		if type==tpt.el.neut.id then
			tpt.parts[i].type=tpt.el.hygn.id
		end
	end
	tpt.element_func(growth,tpt.el.neut.id)
	function growth(i,x,y,s,n)
		local type=tpt.get_property("type",x+math.random(-1,1),y+math.random(-1,1))
		if type==tpt.el.phot.id then
			tpt.parts[i].type=tpt.el.hygn.id
		end
	end
	tpt.element_func(growth,tpt.el.phot.id)

	function growth(i,x,y,s,n)
		local type=tpt.get_property("type",x+math.random(-1,1),y+math.random(-1,1))
		if type==tpt.el.oxyg.id then
			tpt.parts[i].type=tpt.el.hygn.id
		end
	end
	tpt.element_func(growth,tpt.el.oxyg.id)

	function growth(i,x,y,s,n)
		local type=tpt.get_property("type",x+math.random(-3,1),y+math.random(-3,1))
		if type==tpt.el.plsm.id then
			tpt.parts[i].type=tpt.el.hygn.id
		end
	end
	tpt.element_func(growth,tpt.el.plsm.id)

	function growth(i,x,y,s,n)
		local type=tpt.get_property("type",x+math.random(-1,1),y+math.random(-1,1))
		if type==tpt.el.hygn.id then
			tpt.parts[i].type=tpt.el.neut.id
		end
	end
	tpt.element_func(growth,tpt.el.hygn.id)

	function growth(i,x,y,s,n)
		local type=tpt.get_property("type",x+math.random(-1,1),y+math.random(-1,1))
		if type==tpt.el.co2.id then
			tpt.parts[i].type=tpt.el.phot.id
		end
	end
	tpt.element_func(growth,tpt.el.co2.id)
	function growth(i,x,y,s,n)
		local type=tpt.get_property("type",x+math.random(-1,1),y+math.random(-1,1))
		if type==tpt.el.nble.id then
			tpt.parts[i].type=tpt.el.phot.id
		end
	end
	tpt.element_func(growth,tpt.el.nble.id)
end)
interface.addComponent(FusionButton)