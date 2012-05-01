package com.beegone.core.questtypes
{
	import com.beegone.core.ItemStack;
	import com.beegone.core.enums.QuestTypes;
	import com.beegone.core.prototypes.Quest;
	import com.beegone.core.prototypes.QuestArc;
	
	public class GatherQuest extends Quest
	{
		private var targetUID:String;
		private var targetAmount:String;
		
		public function GatherQuest(uid:String, title:String, description:String, type:QuestTypes, arc:QuestArc, questGiver:String, rewardItem:Vector.<ItemStack>, rewardMoney:Number)
		{
			super(uid, title, description, type, arc, questGiver, rewardItem, rewardMoney);
		}
	}
}