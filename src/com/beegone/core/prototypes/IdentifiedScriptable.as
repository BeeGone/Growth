package com.beegone.core.prototypes
{
	import com.beegone.core.interfaces.Descriptable;
	import com.beegone.core.interfaces.Scriptable;
	
	public class IdentifiedScriptable extends IdentifyablePrototype implements Scriptable, Descriptable
	{
		private var _description:String;
		
		public function IdentifiedScriptable(uid:String, name:String, description:String)
		{
			super(uid, name);
			this._description = description;
		}
		
		public function preScript():Boolean
		{
			return false;
		}
		
		public function script():Boolean
		{
			return false;
		}
		
		public function postScript():Boolean
		{
			return false;
		}
		
		public function get description():String
		{
			return _description();
		}
		
		
	}
}