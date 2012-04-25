package core
{
	public interface Scriptable
	{
		function preScript():String;
		function script():String;
		function postScript():String;
	}
}