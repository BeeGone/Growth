package com.beegone.core
{
	import com.beegone.core.enums.ItemTypes;
	import com.beegone.core.enums.ParameterTypes;
	import com.beegone.core.prototypes.Effect;

	public class ItemEffect extends Effect
	{
		private var _durability:Number;

		
		public function ItemEffect(effect:ParameterTypes, size:Number, durability:Number, typeSource:ItemTypes){
			super(effect,size,typeSource);
			_durability = durability;
		}
		
		public function get durability():Number
		{
			return _durability;
		}
		
		public function dropDurability(drop:Number):Boolean {
			_durability -= drop;
			return _durability <= 0;
		}
	}
}