package com.beegone.core
{
	import com.beegone.core.prototypes.IdentifiedScriptable;

	public class QuestArc extends IdentifiedScriptable
	{
		private var quests:Object;
		private var questFlags:Object;
		
		public function QuestArc(uid:String, title:String, description:String){
			super(uid, name, description);
			this.quests = new Object();
			this.questFlags = new Object();
		}
		
		public function QuestArc(uid:String, title:String, description:String, quests:Object, questFlags:Object){
			super(uid, name, description);
			this.quests = quests;
			this.questFlags = questFlags;
		}
		
		public function postScript():Boolean
		{
			// TODO Auto Generated method stub
			return false;
		}
		
		public function preScript():Boolean
		{
			// TODO Auto Generated method stub
			return false;
		}
		
		public function script():Boolean
		{
			// TODO Auto Generated method stub
			return false;
		}
		
		
		
	}
}