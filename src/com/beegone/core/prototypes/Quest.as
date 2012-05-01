package com.beegone.core.prototypes
{
	import com.beegone.core.ItemStack;
	import com.beegone.core.enums.QuestTypes;
	
	/**
	 * IMPORTANT NOTE (PRE/IN/POST-SCRIPT)
	 * PRESCRIPT():
	 * *In this function everything is done as preparation for the quest:
	 * **Testing if all requirements are met to start quest.
	 * **Registering as eventlistener
	 * **etc
	 * *returning true will tell eventmanager that the quest is properly set up to accept events.
	 * SCRIPT():
	 * *this function is triggered by the eventmanager and is the test if the quest has finished.
	 * *returning true will tell evenmanager that the quest is done and doesn't need to return t
	 * POSTSCRIPT():
	 * *This is the same as PRESCRIPT(), but then the reverse.
	 * *Deregistering is done automatically.
	 * *You can set up a talkto-eventlistener to collect a reward or give it right away.
	 * *or reset all values to restart the quest.
	 * *returning false will trigger prescript again and return to the queue.
	 */
	public class Quest extends IdentifiedScriptable
	{
		private var type:QuestTypes;
		private var arc:QuestArc;
		private var questGiver:String;
		private var rewardItem:Vector.<ItemStack>;
		private var _rewardMoney:Number;
		
		public function Quest(uid:String, title:String, description:String, type:QuestTypes, arc:QuestArc, 
							  questGiver:String, rewardItem:Vector.<ItemStack>, rewardMoney:Number)
		{
			super(uid, title, description);
			this.type = type;
			this.arc = arc;
			this.questGiver = questGiver;
			this.rewardItem = new Vector.<ItemStack>;
			this.rewardItem.concat(rewardItem);
			this.rewardMoney = rewardMoney;
		}
		
		public function registerReward(stack:ItemStack):void {
			rewardItem.push(stack);
		}
		
		public function failScript():void {
			//When everything fails!
		}

		public function get rewardMoney():Number
		{
			return _rewardMoney;
		}

		public function set rewardMoney(value:Number):void
		{
			_rewardMoney = value;
		}

	}
}