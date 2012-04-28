package com.beegone.core.enums
{
	public class EquipmentTypes {
		public static const NONE:String = "Neither";
		
		public static const HEADGEAR:String = "Headgear";
		public static const CHESTGEAR:String = "Chestgear";
		public static const LEGGEAR:String = "Leggear";
		public static const FOOTGEAR:String = "Footgear";
		public static const GAUNLETS:String = "Gaunlets";
		
		public static const RING:String = "Ring";
		public static const NECKLACE:String = "Necklace";
		
		private var type:String;
		
		public function EquipmentTypes(type:String) {
			if(type == "" || type == null) {
				type = NONE;
			}
			this.type = type;
		}
		
		public function getIterator():Array {
			var iterator:Array = new Array(HEADGEAR, CHESTGEAR, LEGGEAR, FOOTGEAR, GAUNLETS, RING, NECKLACE);
			return iterator;
		}
	}
}