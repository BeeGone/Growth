package com.beegone.core
{
	import com.beegone.core.enums.ItemTypes;
	import com.beegone.core.enums.ParameterTypes;
	import com.beegone.core.interfaces.Descriptable;
	import com.beegone.core.interfaces.Identifyable;
	import com.beegone.core.prototypes.Effect;
	
	public class Perk extends Effect implements Descriptable, Identifyable
	{
		private var _uid:String;
		private var _name:String;
		private var _description:String;
		
		public function Perk(effect:ParameterTypes, size:Number, typeSource:ItemTypes, uid, name, descriptable)
		{
			super(effect, size, typeSource);
		}
		
		public function get description():String
		{
			return _description;
		}
		
		public function get uid():String
		{
			return _uid;
		}
		
		public function set uid(value:String):void
		{
			_uid = value;
		}
		
		public function get name():String
		{
			return _name;
		}
		
		public function set name(value:String):void
		{
			_name = name;
		}
	}
}