package com.beegone.core.managers
{
	import com.beegone.core.enums.BodyPartTypes;
	
	public class BodyManager
	{
		private var bodyparts:Object;
		
		public function BodyManager()
		{
			for each (var part:String in BodyPartTypes.getIterator()) {
				bodyparts[part] = new Array();
			}
		}
		
		public function addBodypart(target:BodyManager, 
	}
}