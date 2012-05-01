package com.beegone.core.prototypes
{
	/**
	 * IMPORTANT NOTES ABOUT PRE/IN/POST SCRIPT:
	 * see Quest for info.
	 */
	public class QuestArc extends IdentifiedScriptable
	{
		private var quests:Vector.<Quest>;
		private var questFlags:Object;
		
		public function QuestArc(uid:String, title:String, description:String){
			super(uid, name, description);
			this.quests = new Vector.<Quest>();
			this.questFlags = new Object();
		}
		
		public function QuestArc(uid:String, title:String, description:String, quests:Object, questFlags:Object){
			super(uid, name, description);
			this.quests = quests;
			this.questFlags = questFlags;
		}		
	}
}