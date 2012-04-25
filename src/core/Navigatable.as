package core
{
	import org.flexunit.runner.manipulation.filters.AbstractFilter;

	public class Navigatable implements Scriptable
	{
		private var exits:Object;
		
		public function Navigatable(exits:Object){
			this.exits = exits;
		}
		
		public function getExits():Object{
			return exits;
		}
		
		public function isExitAvailable(direction:int):Boolean{
			return exits.hasOwnProperty(direction);
		}
		
		public function leave(direction:int):Object{
			// TODO investigate how to use events
			return trace(exits.direction);
		}
		
		public function postScript():String
		{
			// TODO Auto Generated method stub
			return null;
		}
		
		public function preScript():String
		{
			// TODO Auto Generated method stub
			return null;
		}
		
		public function script():String
		{
			// TODO Auto Generated method stub
			return null;
		}
		
	}
}