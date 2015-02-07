-- Display buttons for my non-functional keyboard

local Velocity_DisplayButton = Button:new(0, 0, 15, 15, "1", "Sets Screen to Velocity Display")
Velocity_DisplayButton:action(function(sender)
	tpt.display_mode(0)
end)
interface.addComponent(Velocity_DisplayButton)

local Pressure_DisplayButton = Button:new(15, 0, 15, 15, "2", "Sets Screen to Pressure Display")
Pressure_DisplayButton:action(function(sender)
	tpt.display_mode(1)
end)
interface.addComponent(Pressure_DisplayButton)

local Persistant_DisplayButton = Button:new(30, 0, 15, 15, "3", "Sets Screen to Persistant Display")
	Persistant_DisplayButton:action(function(sender)
	tpt.display_mode(2)
end)
interface.addComponent(Persistant_DisplayButton)

local Fire_DisplayButton = Button:new(45, 0, 15, 15, "4", "Sets Screen to Fire Display")
	Fire_DisplayButton:action(function(sender)
	tpt.display_mode(3)
end)
interface.addComponent(Fire_DisplayButton)

local Blob_DisplayButton = Button:new(60, 0, 15, 15, "5", "Sets Screen to Blob Display")
	Blob_DisplayButton:action(function(sender)
	tpt.display_mode(4)
end)
interface.addComponent(Blob_DisplayButton)

local Heat_DisplayButton = Button:new(75, 0, 15, 15, "6", "Sets Screen to Heat Display")
	Heat_DisplayButton:action(function(sender)
	tpt.display_mode(5)
end)
interface.addComponent(Heat_DisplayButton)

local Fancy_DisplayButton = Button:new(90, 0, 15, 15, "7", "Sets Screen to Fancy Display")
	Fancy_DisplayButton:action(function(sender)
	tpt.display_mode(6)
end)
interface.addComponent(Fancy_DisplayButton)

local Nothing_DisplayButton = Button:new(105, 0, 15, 15, "8", "Sets Screen to Nothing Display")
	Nothing_DisplayButton:action(function(sender)
	tpt.display_mode(7)
end)
interface.addComponent(Nothing_DisplayButton)

local HeatGradient_DisplayButton = Button:new(120, 0, 15, 15, "9", "Sets Screen to Heat Gradient Display")
	HeatGradient_DisplayButton:action(function(sender)
	tpt.display_mode(8)
end)
interface.addComponent(HeatGradient_DisplayButton)

local LifeGradient_DisplayButton = Button:new(135, 0, 15, 15, "10", "Sets Screen to Life Gradient Display")
	LifeGradient_DisplayButton:action(function(sender)
	tpt.display_mode(9)
end)
interface.addComponent(LifeGradient_DisplayButton)

local AlternateVelocity_DisplayButton = Button:new(135, 0, 15, 15, "0", "Sets Screen to Alternate Velocity Display")
	AlternateVelocity_DisplayButton:action(function(sender)
	tpt.display_mode(10)
end)
interface.addComponent(AlternateVelocity_DisplayButton)

--New Buttons 

local deletesparkButton = Button:new(539, 0, 15, 15, "D", "Delete Spark")
deletesparkButton:action(function(sender)
	tpt.reset_spark()
end)
interface.addComponent(deletesparkButton)

local MeltButton = Button:new(524, 0, 15, 15, "M", "Makes Everything Melt")
MeltButton:action(function(sender)
for x=4,607,1 do
for y=4,379,1 do
ctype = tpt.get_property("type", x, y)
tpt.set_property("type", 6, x, y)
tpt.set_property("ctype", ctype, x, y)
tpt.set_property("temp", 10000, x, y)
end
end
end)
interface.addComponent(MeltButton)

local everythingButton = Button:new(509, 0, 15, 15, "E", "Sets Everything on screen to specified element")
everythingButton:action(function(sender)
	tpt.set_property("type", tpt.input("Element Name: "))
end)
interface.addComponent(everythingButton)

local lifemaxButton = Button:new(494, 0, 15, 15, "L", "Sets life of Everything on screen to 99999999")
lifemaxButton:action(function(sender)
	tpt.set_property("life", 99999999)
end)
interface.addComponent(lifemaxButton)

local FullScreenButton = Button:new(464, 0, 15, 15, "FL", "Full Screen for Mac OS X Users")
FullScreenButton:action(function(sender)
  tpt.setwindowsize(1,1)
end)
interface.addComponent(FullScreenButton)

local ExitButton = Button:new(479, 0, 15, 15, "EX", "Exits Full Screen")
ExitButton:action(function(sender)
  tpt.setwindowsize()
end)
interface.addComponent(ExitButton)

local TTANButton = Button:new(569, 0, 15, 15, "T", "Makes TTAN Extremely Durable")
TTANButton:action(function(sender)

elements.property(elements.DEFAULT_PT_TTAN, "HeatConduct" , 0)
elements.property(elements.DEFAULT_PT_TTAN, "Hardness" , 0)
elements.property(elements.DEFAULT_PT_TTAN, "Weight" , 10000)
sim.can_move(elements.DEFAULT_PT_DEST, elements.DEFAULT_PT_TTAN, 0)
function ttan1(i,x,y,s,n)
	local type = tpt.get_property("temp", x, y)
	if type > 300 then
		tpt.set_property("temp", -math.huge, x, y)
	end
	tpt.set_property("temp", -math.huge, x, y)
	local type = tpt.get_property("type", x + math.random(-3,3), y + math.random(-3,3))
	if type == tpt.el.dest.id then
		sim.gravMap(x/4, y/4, -256)
	end
	local type = tpt.get_property("type", x + math.random(-1,1), y + math.random(-1,1))
	if type == tpt.el.virs.id or type == tpt.el.vrss.id or type == tpt.el.vrsg.id then
		tpt.create(x + math.random(-1,1), y + math.random(-1,1), 'soap')
	end
	local rx,ry = x + math.random(-1,1), y + math.random(-1,1)
	local type = tpt.get_property("type", rx, ry)
	if type == tpt.el.soap.id then
		tpt.delete(rx, ry)
	end
end
tpt.element_func(ttan1,tpt.el.ttan.id)
end)
interface.addComponent(TTANButton)


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

elements.property(elements.DEFAULT_PT_WIFI, "HighPressureTransition" , tpt.el.wifi.id)