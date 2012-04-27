package com.beegone.core.enums
{
	public class BodyPartTypes
	{
		public static const var HAIR:String = "Hair";
		public static const var HEAD:String = "Head";
		public static const var MOUTH:String = "Mouth";
		public static const var NECK:String = "Neck";
		public static const var SHOULDERS:String = "Shoulder";
		public static const var ARMS:String = "Arms";
		public static const var TORSO:String = "Torso";
		public static const var BOOB:String = "Boob";
		public static const var GUT:String = "Gut";
		public static const var COCK:String = "Cock";
		public static const var BALL:String = "Ball";
		public static const var ASSHOLE:String = "Asshole";
		public static const var CUNT:String = "Cunt";
		public static const var ASS:String = "Ass";
		public static const var LEGS:String = "Legs";
		public static const var CENTAUR:String = "Centaur";
		public static const var HANDS:String = "Hands";
		public static const var FEET:String = "Feet";
		
		private var type:String;
		
		public function BodyPartTypes(type:String){
			if(type == null){
				type = "";
			}
			this.type = type;
		}
	}
}