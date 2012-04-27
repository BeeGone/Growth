package com.beegone.core.enums
{
	public class EventTypes
	{
		public static final var CUSTOM:int = 0;
		//basic moves
		public static final var WAIT:int = 1;
		public static final var MOVE:int = 2;
		public static final var PICK_UP:int = 3;
		//FIGHT related
		public static final var FIGHT_CUSTOM:int = 100;
		public static final var FIGHT_WIN:int = 101;
		public static final var FIGHT_LOST:int = 102;
		public static final var KILLED_MONSTER:int = 103;
		
		private var type:String;
		
		public function Directions(type:int){
			this.type = type;
		}
	}
}