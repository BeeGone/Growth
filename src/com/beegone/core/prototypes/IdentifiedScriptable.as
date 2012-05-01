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
			return true;
		}
		
		public function script(event:GameEvent):Boolean
		{
			return true;
		}
		
		public function postScript():Boolean
		{
			return true;
		}
		
		public function get description():String
		{
			return _description();
		}
		
		
	}
}