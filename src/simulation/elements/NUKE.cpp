#include "simulation/Elements.h"
//#TPT-Directive ElementClass Element_NUKE PT_NUKE 186
Element_NUKE::Element_NUKE()
{
	Identifier = "DEFAULT_PT_NUKE";
	Name = "NUKE";
	Colour = PIXPACK(0x2D3ED1);
	MenuVisible = 1;
	MenuSection = SC_NUCLEAR;
	Enabled = 1;
	
	Advection = 0.7f;
	AirDrag = 0.02f * CFDS;
	AirLoss = 0.96f;
	Loss = 0.80f;
	Collision = 0.0f;
	Gravity = 0.1f;
	Diffusion = 0.1f;
	HotAir = 0.000f	* CFDS;
	Falldown = 1;
	
	Flammable = 0;
	Explosive = 0;
	Meltable = 0;
	Hardness = 30;
	
	Weight = 50;
	
	Temperature = R_TEMP+0.1f;
	HeatConduct = 0.1;
	Description = "Nuke";
	
	State = ST_SOLID;
	Properties = TYPE_PART|PROP_LIFE_DEC|PROP_LIFE_KILL_DEC;
	
	LowPressure = IPL;
	LowPressureTransition = NT;
	HighPressure = IPH;
	HighPressureTransition = NT;
	LowTemperature = ITL;
	LowTemperatureTransition = NT;
	HighTemperature = ITH;
	HighTemperatureTransition = NT;
	
	Update = &Element_NUKE::update;
}
//#TPT-Directive ElementHeader Element_NUKE static int update(UPDATE_FUNC_ARGS)
int Element_NUKE::update(UPDATE_FUNC_ARGS)
{

	sim->create_part(-1, x+rand()%3-1, y+rand()%3-1, PT_OIL);
	sim->create_part(-1, x+rand()%3-1, y+rand()%3-1, PT_NITR);
	sim->create_part(-1, x+rand()%3-1, y+rand()%3-1, PT_DESL);
	sim->create_part(-1, x+rand()%3-1, y+rand()%3-1, PT_THRM);
	sim->create_part(-1, x+rand()%3-1, y+rand()%3-1, PT_BANG);
	sim->create_part(-1, x+rand()%3-1, y+rand()%3-1, PT_FIRE);
	return(0);
}

Element_NUKE::~Element_NUKE() {}
