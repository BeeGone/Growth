package com.beegone.core.prototypes
{
	public class Identifyable
	{
		private var _uid:String;
		private var _name:String;
		
		public function Identifyable(uid:String, name:String) {
			this._uid = uid;
			this._name = name
		}
		
		
		public function get uid():String
		{
			return uid;
		}

		public function set uid(value:String):void
		{
			uid = value;
		}

		public function get name():String
		{
			return _name;
		}

		public function set name(value:String):void
		{
			_name = value;
		}


	}
}