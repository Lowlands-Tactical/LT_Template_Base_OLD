#include "3DEN\macros.inc"

class ctrlCombo;
class ctrlEdit;

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

		#include "3DEN\Camo\Camo_combo.hpp"
		#include "3DEN\TFR\TFR_combo.hpp"
		#include "3DEN\Roles\Role_combo.hpp"
		#include "3DEN\Roles\Role_veh_combo.hpp"

	};
	class Mission
	{
		class Scenario
		{
			class AttributeCategories
			{

				class LT_Category
				{
					displayname = "Lowlands Tactical: Scenario Settings";
					collapsed 	= 0;
					class Attributes
					{
						#include "3DEN\Camo\Camo.hpp"
						#include "3DEN\TFR\TFR.hpp"
						#include "3DEN\PD\PermaDeath.hpp"
					};
				};
			};
		};
	};
	class Object
	{
		class AttributeCategories
		{
			class LT_Object_Category
			{
				displayName = "Lowlands Tactical: Soldier settings";
				collapsed = 0;
				class Attributes
				{
					#include "3DEN\Roles\Role_selector.hpp"
					#include "3DEN\Roles\Role_veh_selector.hpp"
					#include "3DEN\Camo\Camo_exclude_unit.hpp"
					#include "3DEN\StaticUnit\setUnitStatic.hpp"
				};
			};
		};
	};
};
