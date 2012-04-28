package com.beegone.core.enums
{
	public class ParameterTypes
	{
		// Visible
		public static const STRENGHT:String = "Strenght";
		public static const ENDURANCE:String = "Endurance";
		public static const DEXTERITY:String = "Dexterity";
		public static const INTELIGENCE:String = "Inteligence";
		public static const CHARM:String = "Charm";
		public static const SENSITIVITY:String = "Sensitivity";
		public static const CORRUPTION:String = "Corruption";
		
		// Invisible 
		public static const HYPER:String = "Hyper"; // aka Steel spine
		
		// Stats (Dynamic)
		public static const HEALTH:String = "Health";
		public static const LUST:String = "Lust";
		public static const ENERGY:String = "Energy";
		public static const HUNGER:String = "Hunger";
		public static const THIRST:String = "Thirst";
			// Spoogies
		public static const BOOBPRODUCED:String = "Boobies";
		public static const BALLPRODUCED:String = "Ballies";
			// Digestion
		public static const STOMACH:String = "Stomach";
		public static const INTESTINES:String = "Intestines";
		public static const CUNT:String = "Cunt";
			
		private var type:String;
		
		public function ParameterTypes(type:String) {
			this.type = type;
		}
		
		public function getIterator():Array {
			var iterator = new Array(STRENGHT, ENDURANCE, DEXTERITY, INTELIGENCE, CHARM, SENSITIVITY, CORRUPTION, HYPER, HEALTH,
				LUST, ENERGY, HUNGER, THIRST, BOOBPRODUCED, BALLPRODUCED, STOMACH, INTESTINES, CUNT);
			return iterator;
		}
	}
}