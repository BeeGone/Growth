package com.beegone.core.enums
{
	public class QuestTypes
	{
		public static final var CUSTOM:String = "Custom";
		public static final var GOTO:String = "Goto";
		public static final var KILL:String = "Kill";
		public static final var GATHER:String = "Gather";
		
		private var type:String;
		
		public function QuestTypes(type:String){
			if(type == null){
				type = "";
			}
			this.type = type;
		}
	}
}