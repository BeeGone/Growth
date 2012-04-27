package com.beegone.core.managers
{
	public class TextBuffer
	{
		private var _textBuffer:Array;
		
		public function TextBuffer(){
			_textBuffer = new Array();
		}
		
		public function addText(text:String):void{
			_textBuffer.push(text);
		}
		
		public function get textBuffer():Array {
			return _textBuffer;
		}
		
		public function getTopLine():Array {
			return _textBuffer.shift();
		}
	}
}