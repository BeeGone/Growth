package com.beegone.core.prototypes
{
	import com.beegone.core.enums.ItemTypes;
	import com.beegone.core.enums.ParameterTypes;

	public class Effect
	{
		private var _effect:ParameterTypes;
		private var _size:Number;
		private var _typeSource:ItemTypes;
		
		public function Effect(effect:ParameterTypes, size:Number, typeSource:ItemTypes) {
			_effect = effect;
			_size = size;
			_typeSource = typeSource;
		}
		
		public function get effect():ParameterTypes
		{
			return _effect;
		}
		
		public function get size():Number
		{
			return _size;
		}
		
		public function get typeSource():ItemTypes
		{
			return _typeSource;
		}
		
	}
}