package com.beegone.core
{
	import com.beegone.core.prototypes.Identifyable;
	
	public class BodyType extends Identifyable
	{
		private var race:String();
		
		
		public function BodyType(uid:String, name:String)
		{
			super(uid, name);
		}
	}
}