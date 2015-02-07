#include <iostream>

#include "gui/Style.h"
#include "gui/interface/Colour.h"

namespace style {
	ui::Colour Colour::InformationTitle = ui::Colour(240, 240, 100);
	ui::Colour Colour::WarningTitle = ui::Colour(255, 255, 100);
	ui::Colour Colour::ErrorTitle = ui::Colour(255, 64, 32);
	
	ui::Colour Colour::ConfirmButton = ui::Colour(240, 240, 100);
	
	ui::Colour Colour::ActiveBorder = ui::Colour(255, 0, 255);
	ui::Colour Colour::InactiveBorder = ui::Colour(240, 240, 100);
	
	ui::Colour Colour::ActiveBackground = ui::Colour(50, 50, 50);
	ui::Colour Colour::InactiveBackground = ui::Colour(0, 0, 0);
}
