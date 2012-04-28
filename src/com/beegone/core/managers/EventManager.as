package com.beegone.core.managers
{
	public class EventManager
	{
		//EventQueue
		private var eventQueue:Object;
		
		//EventListeners
		private var listeners:Array;
		
		public function EventManager()
		{
			eventQueue = new Object();
			// For loop like bodymanager.
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