package core.interfaces
{
	public interface Scriptable
	{
		/**
		 * Script fired before 'activation'.
		 * Advised: Boolean states if requirement are met.
		 */
		function preScript():Boolean;
		
		/**
		 * Script fired when the scriptable is activated. Meaning it is part of the repeatable queue. 
		 * Advised: Boolean states need for repetition. (e.q. Completion of a Quest)
		 */ 
		function script():Boolean;
		
		/**
		 * Script fire after scriptable is deleted from actibe events.
		 * Adivised: Boolean states succes of script. False will cause an error to pop-up to player.
		 */ 
		function postScript():Boolean;
		
	}
}