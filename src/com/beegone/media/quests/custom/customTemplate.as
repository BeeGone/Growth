
import com.beegone.core.prototypes.Quest;

var customquest:Quest = new CustomQuest;

public class CustomQuest extends Quest{
	
	//Code here for actions after quest. False is removal out of queue
	override public function postScript():Boolean
	{
		// TODO Auto Generated method stub
		return super.postScript();
	}
	
	//Code here for requirements before quest starts.
	override public function preScript():Boolean
	{
		// TODO Auto Generated method stub
		return super.preScript();
	}
	
	//Code here for requirements while doing quest
	override public function script():Boolean
	{
		// TODO Auto Generated method stub
		return super.script();
	}
}