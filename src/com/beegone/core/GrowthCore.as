package com.beegone.core
{
	import com.beegone.core.managers.*;

	public class GrowthCore
	{
		private static final var gCore:GrowthCore;
		
		private var clock:Clock;
		//Managers
		private var eventManager:EventManager;
		
		
		public function GrowthCore() {
			eventManager = new EventManager();
			clock = new Clock(eventManager);
			
			// setup managers
			gCore = this;
		}
		
		public function init() {
			// load in scripts
		}
		
		public function save():Boolean {
			// Save function
		}
		
		public function load():Boolean {
			// Load functions
		}
	}
}