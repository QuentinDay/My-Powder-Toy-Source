#include "simulation/Elements.h"
//#TPT-Directive ElementClass Element_SAMR PT_SAMR 183
Element_SAMR::Element_SAMR()
{
	Identifier = "DEFAULT_PT_SAMR";
	Name = "SAMR";
	Colour = PIXPACK(0x808080);
	MenuVisible = 1;
	MenuSection = SC_NUCLEAR;
	Enabled = 1;
	
	Advection = 0.7f;
	AirDrag = 0.02f * CFDS;
	AirLoss = 0.96f;
	Loss = 0.80f;
	Collision = 0.00f;
	Gravity = 2.0f;
	Diffusion = 0.00f;
	HotAir = 0.0000f * CFDS;
	Falldown = 1;
	
	Flammable = 0;
	Explosive = 0;
	Meltable = 0;
	Hardness = 0;
	
	Weight = 100;
	
	Temperature = R_TEMP+0.0f +273.15f;
	HeatConduct = 70;
	Description = "Solid Anti-Matter";
	
	State = ST_NONE;
	Properties = TYPE_PART;
	
	LowPressure = IPL;
	LowPressureTransition = NT;
	HighPressure = IPH;
	HighPressureTransition = NT;
	LowTemperature = ITL;
	LowTemperatureTransition = NT;
	HighTemperature = ITH;
	HighTemperatureTransition = NT;
	
	Update = &Element_SAMR::update;
	
}

//#TPT-Directive ElementHeader Element_SAMR static int update(UPDATE_FUNC_ARGS)
int Element_SAMR::update(UPDATE_FUNC_ARGS)
 {
	 int r, rx, ry, rt;
	for (rx=-1; rx<2; rx++)
		for (ry=-1; ry<2; ry++)
			if (BOUNDS_CHECK && (rx || ry))
			{
				r = pmap[y+ry][x+rx];
				if (!r)
					continue;
				rt = r&0xFF;
				if (rt!=PT_AMTR && rt!=PT_DMND && rt!=PT_CLNE && rt!=PT_PCLN && rt!=PT_VOID && rt!=PT_BHOL && rt!=PT_NBHL && rt!=PT_PRTI && rt!=PT_PRTO && rt!=PT_INDC && rt!=PT_SPRK && rt!=PT_INDI && rt!=PT_SAMR)
				{
					parts[i].life++;
					if (parts[i].life==4)
					{
						sim->kill_part(i);
						return 1;
					}
					if (!(rand()%10))
						sim->create_part(r>>8, x+rx, y+ry, PT_NEUT);
					else
						sim->kill_part(r>>8);
					sim->pv[y/CELL][x/CELL] -= 2.0f;
				}
			}
	return 0;
}


Element_SAMR::~Element_SAMR() {}
