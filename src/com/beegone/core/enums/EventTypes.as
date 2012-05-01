package com.beegone.core.enums
{
	public class EventTypes
	{
		public static const CUSTOM:int = 0;
		//basic moves
		public static const WAIT:int = 1;
		public static const MOVE:int = 2;
		public static const PICK_UP:int = 3;
		//FIGHT related
		public static const FIGHT_CUSTOM:int = 100;
		public static const FIGHT_WIN:int = 101;
		public static const FIGHT_LOSS:int = 102;
		public static const KILLED_MONSTER:int = 103;
		//Other
		public static const GROWTH:int = 200;
		public static const TALK_TO_NPC = 201;
		
		private var type:int;
		
		public function EventTypes(type:int){
			this.type = type;
		}
		
		public static function getIterator():Array {
			var iterator:Array = new Array(CUSTOM, WAIT, MOVE, PICK_UP, FIGHT_CUSTOM, FIGHT_WIN, FIGHT_LOSS, KILLED_MONSTER, GROWTH);
			return iterator;
		}
	}
