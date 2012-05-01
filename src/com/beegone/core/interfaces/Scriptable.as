package com.beegone.core.interfaces
{
	import com.beegone.core.prototypes.GameEvent;

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
		function script(event:GameEvent):Boolean;
		
		/**
		 * Script fire after scriptable is deleted from active events.
		 * Adivised: Boolean states succes of script. False will 'reset' the scriptable.
		 */ 
		function postScript():Boolean;
		
	}
}