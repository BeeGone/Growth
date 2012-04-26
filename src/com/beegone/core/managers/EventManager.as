package com.beegone.core.managers
{
	public class EventManager
	{
		private static final var instance:EventManager = this;
		//EventQueues
		private var eventQueue:Array;
		
		//EventListeners
		private var listeners:Array;
		
		public function EventManager()
		{
			eventQueue = new Array();
		}
		
		public function getInstance():EventManager {
			return instance;
		}	
		
		public function processTick():void{
			
		}
		
		//____ Listener Registration/Deletion ____
		public function registerListener():Boolean {
			
		}
		
		public function deleteListener():Boolean {
			
		}
		
		//
	}
}