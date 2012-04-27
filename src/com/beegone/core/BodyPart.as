package com.beegone.core
{
	import com.beegone.core.enums.BodyPartTypes;
	import com.beegone.core.prototypes.Identifyable;

	public class BodyPart extends Identifyable
	{
		private var _part:BodyPartTypes;
		private var _type:BodyType;
		
		private var _width:Number;
		private var _height:Number;
		private var _amount:int;
		private var _weightNumber:Number;
		
		public function BodyPart(uid:String, name:String, part:BodyPartTypes,
								 type:BodyPart, width:Number, height:Number, amount:int, weightNumber:Number)
		{
			super(uid, name);
			_part = part;
			_type = type;
			_width = width;
			_height = height;
			_amount = amount;
			_weightNumber = weightNumber;
		}
	}
}