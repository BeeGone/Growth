package com.beegone.core
{
	import com.beegone.core.ItemStack;
	
	public class Inventory
	{
		private var _stacks:Vector.<ItemStack>;
		private var _size:Number;
		private var _stackable:Boolean;
		
		public function Inventory(size:Number, stackable:Boolean)
		{
			_stacks = new Vector.<ItemStack>;
			_size = size;
			_stackable = stackable;
		}
		
		public function get size():Number {
			return _size;
		}
		
		public function set size(value:Number):void {
			_size = value;
		}
		
		public function get stackable():Boolean {
			return _stackable;
		}
		
		public function set stackable(value:Boolean):void {
			_stackable = value;
		}
		
		public function addItem(item:Item):Boolean {
			//Control for free space when unstackable
			if(_stacks.length => _size && !_stackable)
				return false;
			//Handel special cases
			if(!_stackable || item.used){
				_stacks.push(new ItemStack(item));
				return true;
			}
			//When stackable look for accepting stack
			for var key:String in _stacks {
				var stack:ItemStack = _stacks[key];
				if(stack.addItem(item))
					return true;
			}
			//When everything fails
			return false;
		}
		
		public function addStack(stack:ItemStack):Boolean {
			//Check for free space
			if(_stacks.length => _size)
				return false;
			//Check if inventory accepts stacks bigger than 1
			if(!_stackable && stack.amount > 1)
				return false;
			//Handle special cases
			if(stack.item.used || (!_stackable && stack.amount == 1)){
				_stacks.push(stack);
				return true;
			}
			//Search for accepting stacks
			for (var key:String in _stacks) {
				var inventoryStack:ItemStack = _stacks[key];
				if(inventoryStack.mergeStacks(stack) <= 0)
					return true;
			}
			
			//When everything fails
			return false;
		}
		
		public function get stack(key:String):ItemStack {
			return null;
		}
	}
}