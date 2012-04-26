package core
{
	import core.managers.EventManager;

	public class Clock
	{
		public static final var TICKS_IN_HOUR:Number = 4;
		public static final var HOURS_IN_DAY:Number = 24;
		
		private var ticks:Number;
		private var eventManager:EventManager;
		
		public function Clock(eventManager:EventManager){
			ticks = 0;
			this.eventManager = eventManager;
		}
		
		public function setClock(ticks:Number):void {
			this.ticks = ticks;
		}
		
		//____ Push ____
		public function tick(ticks:Number):void{
			if(ticks == 0){
				return;
			}
			var i:Number;
			for(i=0;i<ticks;i++){
				eventManager.processTick();
				tick++;
			}
		}
		
		//____ Skips ____
		public function skipTicks(ticks:Number):void {
			tick = tick + ticks;
		}
		
		public function skipHours(hours:Number):void {
			tick = tick + hours*TICKS_IN_HOUR;
		}
		
		//____ Gets ____
		public function getTicks():Number {
			return ticks;
		}
		
		public function getTicksInHours():Number {
			return Math.floor(ticks/TICKS_IN_HOUR);
		}
		
		public function getHoursCurrentDay():Number {
			return getTicksInHours() % HOURS_IN_DAY;
		}
		
		public function getTicksInDays():Number {
			return Math.floor(getTicksInHours()/HOURS_IN_DAY);
		}
		
		public static function calculateTicks(days:Number, hours:Number):Number {
			return ((days * HOURS_IN_DAY) + hours) * TICKS_IN_HOUR; 
		}
	}
}