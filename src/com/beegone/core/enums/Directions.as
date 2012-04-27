package com.beegone.core.enums
{
	public class Directions
	{
		public static const var WAIT:String = "Wait";
		
		public static const var NORTH:String = "N";
		public static const var NORTHEAST:String = "NE";
		public static const var EAST:String = "E";
		public static const var SOUTHEAST:String = "SE";
		public static const var SOUTH:String = "S";
		public static const var SOUTHWEST:String = "SW";
		public static const var WEST:String = "W";
		public static const var NORTHWEST:String = "NW";
		
		public static const var UP:String = "Up";
		public static const var DOWN:String = "Down";
		
		
		private var type:String;
		
		public function Directions(type:String){
			if(type == null){
				type = "";
			}
			this.type = type;
		}
		
	}
}