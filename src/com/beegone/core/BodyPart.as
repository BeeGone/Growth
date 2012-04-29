package com.beegone.core
{
	import com.beegone.core.enums.BodyPartTypes;
	import com.beegone.core.prototypes.IdentifyablePrototype;

	public class BodyPart extends IdentifyablePrototype
	{
		private var _part:BodyPartTypes;
		private var _type:BodyType;
		
		private var _width:Number;
		private var _minWidth:Number;
		private var _maxWidth:Number;

		private var _height:Number;
		private var _minHeight:Number;
		private var _maxHeight:Number;

		private var _amount:int;
		private var _minAmount:int;
		private var _maxAmount:int;

		private var _weightNumber:Number;
		
		public function BodyPart(uid:String, name:String, part:BodyPartTypes, type:BodyType, 
			width:Number, widthMin:Number, widthMax:Number,
			height:Number, heigthMin:Number, heigthMax:Number,
			amount:int, amountMin:int, amountMax:int,
			weightNumber:Number)
		{
			super(uid, name);
			_part = part;
			_type = type;

			_width = width;
			_minWidth = widthMin;
			_maxWidth = widthMax;

			_height = height;
			_minHeight = heightMin;
			_maxHeight = heightMax;

			_amount = amount;
			_minAmount = amountMin;
			_maxAmount = amountMax;

			_weightNumber = weightNumber;
		}

		public function growWidth(widthIncrease:Number):Boolean {
			if(_width + widthIncrease >= _minWidth && _width + widthIncrease <= _maxWidth){
				_width = _width + widthIncrease;
				return true;
			}
			return false;
		}

		public function growHeight(heightIncrease:Number):Boolean {
			if(_height + heightIncrease >= _minWidth && _height + heightIncrease <= _maxWidth){
				_height = _height + heightIncrease;
				return true;
			}
			return false;
		}

		public function shrinkWidth(widthDecrease:Number):Boolean {
			return growWidth(-widthDecrease);
		}

		public function shrinkHeight(heightDecrease:Number):Boolean {
			return growWidth(-heightDecrease);
		}
		public function increase(amount:int):Boolean {
			if(amount + _amount >= _minAmount && amount + _amount <= _maxAmount) {
				_amount = _amount + amount;
				return true;
			}
			return false;
		}

		public function get weight():Number {
			return _width * _height * _amount * _weightNumber;
		}

		
	}
}