package com.beegone.core.questtypes
{
	import com.beegone.core.ItemStack;
	import com.beegone.core.enums.QuestTypes;
	import com.beegone.core.prototypes.GameEvent;
	import com.beegone.core.prototypes.Quest;
	import com.beegone.core.prototypes.QuestArc;
	
	public class KillQuest extends Quest
	{
		private var _targetUID:String;
		private var _killAmount:int;
		private var _returnToNPC:Boolean;
		
		private var _killed:int;
		
		public function KillQuest(uid:String, title:String, description:String, arc:QuestArc, questGiver:String,
								  questGiver:String, rewardItem:Vector.<ItemStack>, rewardMoney:Number,
								  targetUID:String, killAmount:int, returnToNPC:Boolean)
		{
			super(uid, title, description, new QuestTypes(QuestTypes.KILL), arc, questGiver, rewardItem, rewardMoney);
			_targetUID = targetUID;
			_killAmount = killAmount;
			_returnToNPC = returnToNPC;
			_killed = 0;
		}
		
		override public function preScript():Boolean
		{
			//TODO register Event
			return true;
		}
		
		override public function script(event:GameEvent):Boolean
		{
			if(event.interactedUID != _targetUID)
				return false;
			_killed++;
			return _killed => _killAmount;
		}
		
		override public function postScript():Boolean
		{
			//TODO unregister Event
			if(_returnToNPC)
				;//TODO register talktoevent.
			return true;
		}		
	}
}