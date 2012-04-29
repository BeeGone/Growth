package com.beegone.core.prototypes
{
	import com.beegone.core.interfaces.Identifyable;

	public class IdentifyablePrototype implements Identifyable
	{
		private var _uid:String;
		private var _name:String;
		
		public function IdentifyablePrototype(uid:String, name:String) {
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

		public function equals(identity:*):Boolean {
			if(identity instanceof IdentifyablePrototype){
				var identityProt:IdentifyablePrototype = identity;
				return _uid == identityProt.uid && _name == identityProt.name;
			}
			return false;
		}
	}
}