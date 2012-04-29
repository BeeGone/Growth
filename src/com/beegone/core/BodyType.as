package com.beegone.core
{
	import com.beegone.core.prototypes.IdentifyablePrototype;
	
	public class BodyType extends IdentifyablePrototype
	{
		private var _race:String;
		
		
		public function BodyType(uid:String, name:String, race:String)
		{
			super(uid, name);
			_race = race;
		}
	}
}