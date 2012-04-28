package com.beegone.core.enums
{
	public class Directions
	{
		public static const WAIT:String = "Wait";
		
		public static const NORTH:String = "N";
		public static const NORTHEAST:String = "NE";
		public static const EAST:String = "E";
		public static const SOUTHEAST:String = "SE";
		public static const SOUTH:String = "S";
		public static const SOUTHWEST:String = "SW";
		public static const WEST:String = "W";
		public static const NORTHWEST:String = "NW";
		
		public static const UP:String = "Up";
		public static const DOWN:String = "Down";
		
		
		private var type:String;
		
		public function Directions(type:String){
			if(type == null){
				type = "";
			}
			this.type = type;
		}
		
		public static function getIterator():Array {
			var iterator = new Array(WAIT, NORTH, NORTHEAST, EAST, SOUTHEAST, SOUTH, SOUTHWEST, WEST, NORTHWEST, UP, DOWN);
			return iterator;
		}
		
	}
}