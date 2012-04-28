package com.beegone.core
{
	import com.beegone.core.enums.QuestTypes;
	import com.beegone.core.prototypes.IdentifiedScriptable;
	
	public class Quest extends IdentifiedScriptable
	{
		private var type:QuestTypes;
		private var arc:QuestArc;
		
		public function Quest(uid:String, title:String, description:String, type:QuestTypes, arc:QuestArc)
		{
			super(uid, title, description);
			this.type = type;
			this.arc = arc;
		}
		
		public function areRequirementsMet():Boolean{
			return false;
		}
	}
}