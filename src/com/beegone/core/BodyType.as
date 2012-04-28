package com.beegone.core
{
	import com.beegone.core.prototypes.Identifyable;
	
	public class BodyType extends Identifyable
	{
		private var _race:String();
		
		
		public function BodyType(uid:String, name:String, race:String)
		{
			super(uid, name);
			_race = race;
		}
	}
}