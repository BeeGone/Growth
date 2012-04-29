package com.beegone.core.managers
{
	import com.beegone.core.interfaces.Timeable;

	public class EventManager implements Timeable
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
		
		public function processTick(tick:Number):void{
			
		}
		
		//____ Listener Registration/Deletion ____
		public function registerListener():Boolean {
			
		}
		
		public function deleteListener():Boolean {
			
		}
		
		//
	}
}