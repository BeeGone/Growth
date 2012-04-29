package com.beegone.core.managers
{
	import com.beegone.core.ItemEffect;
	import com.beegone.core.Perk;
	import com.beegone.core.interfaces.Timeable;
	import com.beegone.core.prototypes.Effect;

	public class EffectManager implements Timeable
	{
		private var tempEffects:Array;
		private var perks:Array;
		
		public function EffectManager() {
			tempEffects = new Array();
			perks = new Array();
		}
		
		public function registerEffect(effect:Effect):void {
			if ( effect instanceof Perk ){
				perks.push(effect);
				return;
			}
			tempEffects.push(effect);
		}
		
		public function processTick(tick:Number):void{
			var i:int;
			var lenght:int;
			for (i=0; i<=length; i++){
				var effect:ItemEffect = tempEffects.shift();
				if (!effect.dropDurability(tick)) {
					tempEffects.push(effect);
				} else {
					length = tempEffects.length;
				}
			}
		}
		
		public function get allEffects():Array {
			return perks.concat(tempEffects);
		}
	}
}