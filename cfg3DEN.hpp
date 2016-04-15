#include "\a3\3DEN\UI\macros.inc"

class Cfg3DEN
{
	class Attributes
	{
		// Base class templates
		class Default; // Empty template with pre-defined width and single line height
		class Title: Default
		{
			class Controls
			{
				class Title;
			};
		}; 
 
		#include "3DEN/Camo/Camo_changer_combo.hpp";
		
	};
	class Mission
	{
		class LT_Section
		{
			displayName = "Lowlands Tactical";
			class AttributeCategories
			{
				#include "3DEN/Camo/Camo_changer.hpp"			
			};
		};
	};
};
