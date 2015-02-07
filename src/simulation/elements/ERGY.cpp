#include "simulation/Elements.h"
//#TPT-Directive ElementClass Element_ERGY PT_ERGY 184
Element_ERGY::Element_ERGY()
{
	Identifier = "DEFAULT_PT_ERGY";
	Name = "ERGY";
	Colour = PIXPACK(0x242424);
	MenuVisible = 1;
	MenuSection = SC_NUCLEAR;
	Enabled = 1;
	
	Advection = 0.7f;
	AirDrag = 0.36f * CFDS;
	AirLoss = 0.96f;
	Loss = 0.80f;
	Collision = 0.1f;
	Gravity = 0.12f;
	Diffusion = 0.00f;
	HotAir = -0.001f	* CFDS;
	Falldown = 1;
	
	Flammable = 0;
	Explosive = 0;
	Meltable = 0;
	Hardness = 0;
	
	Weight = 100;
	
	Temperature = INFINITY;
	HeatConduct = 255;
	Description = "Pure Energy";
	
	State = ST_SOLID;
	Properties = TYPE_PART|PROP_LIFE_DEC;
	
	LowPressure = IPL;
	LowPressureTransition = NT;
	HighPressure = IPH;
	HighPressureTransition = NT;
	LowTemperature = ITL;
	LowTemperatureTransition = NT;
	HighTemperature = ITH;
	HighTemperatureTransition = NT;
	
	Update = &Element_ERGY::update;
	
}

//#TPT-Directive ElementHeader Element_ERGY static int update(UPDATE_FUNC_ARGS)
int Element_ERGY::update(UPDATE_FUNC_ARGS)
{
	if (!(rand()%2-1))
		sim->create_part(-2, x+rand()%2-1, y+rand()%2-1, PT_PHOT);
		sim->pv[y/CELL][x/CELL] += 50;
		parts[i].temp = INFINITY;
	if (!(rand()%2-1))
		sim->create_part(-2, x+rand()%2-1, y+rand()%2-1, PT_NEUT);
		sim->pv[y/CELL][x/CELL] += 50;
		parts[i].temp = INFINITY;
	if (!(rand()%2-1))
		sim->create_part(-2, x+rand()%2-1, y+rand()%2-1, PT_ELEC);
		sim->pv[y/CELL][x/CELL] += 50;
		parts[i].temp = INFINITY;
	if (2+2 == 4)
		sim->pv[y/CELL][x/CELL] += 50;
		parts[i].temp = INFINITY;

	return(0);
}


Element_ERGY::~Element_ERGY() {}
