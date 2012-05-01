package com.beegone.core.questtypes
{
	import com.beegone.core.ItemStack;
	import com.beegone.core.enums.QuestTypes;
	import com.beegone.core.prototypes.GameEvent;
	import com.beegone.core.prototypes.Quest;
	import com.beegone.core.prototypes.QuestArc;
	
	public class GotoQuest extends Quest
	{
		private var _targetLocUID:String;
		private var _returnToGiver:Boolean;
		private var _targetNPC:String;
		
		public function KillQuest(uid:String, title:String, description:String, arc:QuestArc, questGiver:String,
								  questGiver:String, rewardItem:Vector.<ItemStack>, rewardMoney:Number,
								  targetLocUID:String, returnToGiver:Boolean, targetNPC:String, arivalText:String)
		{
			super(uid, title, description, new QuestTypes(QuestTypes.GOTO), arc, questGiver, rewardItem, rewardMoney);
			_targetLocUID = targetLocUID;
			_returnToGiver = returnToGiver;
			_targetNPC = targetNPC;
		}
		
		override public function preScript():Boolean
		{
			//TODO register Event
			return true;
		}
		
		override public function script(event:GameEvent):Boolean
		{
			return event.interactedUID == _targetLocUID;
		}
		
		override public function postScript():Boolean
		{
			//TODO unregister Event
			//TODO register arivalText
			if(_targetNPC != null)
				;//TODO register talkto event
			if(_returnToGiver)
				;//TODO registe talkto event return
			return true;
		}
	}
}