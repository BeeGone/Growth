package com.beegone.core.enums
{
	public class ItemTypes
	{
		public static const CONSUMABLE:String = "Consumable";
		public static const EQUIPABLE:String = "Equipable";
		public static const USABLE:String = "Usable";
		
		public static const KEY:String = "Key";
		
		private var type:String;
		
		public function ItemTypes(type:String)
		{
			this.type = type;
		}
	}
}