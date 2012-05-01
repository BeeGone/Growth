package com.beegone.core.prototypes
{
	import com.beegone.core.enums.EventTypes;

	public class GameEvent
	{
		private var _type:EventTypes;
		private var _interactedUID:String;
		
		public function GameEvent(type:EventTypes, interactedUID:String)
		{
			_type = type;
			_interactedUID = interactedUID;
		}
		
		public function get type():EventTypes {
			return _type;
		}
		
		public function get interactedUID():String {
			return _interactedUID;
		}
	}
}