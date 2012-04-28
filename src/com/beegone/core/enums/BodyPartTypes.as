package com.beegone.core.enums
{
	public class BodyPartTypes
	{
		public static const HAIR:String = "Hair";
		public static const HEAD:String = "Head";
		public static const MOUTH:String = "Mouth";
		public static const NECK:String = "Neck";
		public static const SHOULDERS:String = "Shoulder";
		public static const ARMS:String = "Arms";
		public static const TORSO:String = "Torso";
		public static const BOOB:String = "Boob";
		public static const GUT:String = "Gut";
		public static const COCK:String = "Cock";
		public static const BALL:String = "Ball";
		public static const ASSHOLE:String = "Asshole";
		public static const CUNT:String = "Cunt";
		public static const ASS:String = "Ass";
		public static const LEGS:String = "Legs";
		public static const CENTAUR:String = "Centaur";
		public static const HANDS:String = "Hands";
		public static const FEET:String = "Feet";
		
		private var type:String;
		
		public function BodyPartTypes(type:String){
			if(type == null){
				type = "";
			}
			this.type = type;
		}
		
		public static function getIterator():Array {
			var iterator:Array = new Array(HAIR, HEAD, MOUTH, NECK, SHOULDERS, ARMS, TORSO, BOOB, GUT, COCK, BALL, ASSHOLE,
				ASSHOLE, CUNT, ASS, LEGS, CENTAUR, HANDS, FEET);
			return iterator;
		}
	}
}