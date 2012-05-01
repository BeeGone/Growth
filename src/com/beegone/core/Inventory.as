package com.beegone.core
{
	import com.beegone.core.ItemStack;
	
	public class Inventory
	{
		public static const NO_SLOT:String = "nope";
		
		private var _stacks:Vector.<ItemStack>;
		private var _size:Number;
		private var _stackable:Boolean;
		
		public function Inventory(size:Number, stackable:Boolean)
		{
			_stacks = new Vector.<ItemStack>;
			_size = size;
			_stackable = stackable;
		}
		
		public function get inventory():Vector.<ItemStack> {
			return _stacks;
		}
		
		public function get stack(slot:String):ItemStack {
			return _stacks[slot];
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
		
		//Probably duplicate cod of addStack...
		public function addItem(item:Item):Boolean {
			//Control for free space when unstackable
			if(_stacks.length => _size && !_stackable)
				return false;
			//Handle special cases
			if((!_stackable || item.used) && _stacks.length < _size){
				_stacks.push(new ItemStack(item));
				return true;
			}
			//When stackable look for accepting stack
			if(_stackable) {
				for var slot:String in _stacks {
					if(_stacks[slot] != null){
						var stack:ItemStack = _stacks[slot];
						if(stack.addItem(item))
							return true;
					}
				}
			}
			//When none accepts item or is not special at all.
			if(_stacks.length < _size){
				_stacks.push(new ItemStack(item));
				return true;
			}
			//When everything fais
			return false;
			
		}
		
		public function addStack(stack:ItemStack):Boolean {
			//Check if inventory accepts stacks bigger than 1. a.k.a _stackable
			if(!_stackable && stack.amount > 1)
				return false;
			//Handle special cases
			if(stack.item.used || (!_stackable && stack.amount == 1)){
				_stacks.push(stack);
				return true;
			}
			//Search for accepting stacks
			for (var slot:String in _stacks) {
				if(_stacks[slot] != null){
					var inventoryStack:ItemStack = _stacks[slot];
					if(inventoryStack.mergeStacks(stack) <= 0)
						return true;
				}
			}
			//Add stack of left-over or unaccepted stacks to new stack
			if(_stacks.length < _size){
				_stacks.push(stack);
				return true;
			}
			//When everything fails
			return false;
		}
		
		public function hasItem(uid:String):Boolean {
			for each var stack:ItemStack in _stacks {
				if(stack != null)
					if(stack.item.uid == uid)
						return true;
			}
			return false;
		}
		
		public function get inventorySlot(uid:String):String {
			for var slot:String in _stacks {
				var stack:ItemStack = _stacks[slot];
				if(stack != null)
					if(stack.item.uid == uid)
						return slot;
			}
			return NO_SLOT;
		}
		
		public function removeStack(slot:String):void {
			if(!_stacks.hasOwnProperty(slot))
				return;
			_stacks.splice(slot);
		}
		
		public function removeOneItemBySlot(slot:String):void {
			if(!_stacks.hasOwnProperty(slot))
				return;
			var stack:ItemStack = _stacks[slot];
			stack.mutateAmount(-1);
			if(stack.isEmpty())
				_stacks.splice(slot);
		}
		
		public function removeOneItemByUID(uid:String):Boolean {
			var slot:String = inventorySlot(uid);
			if(slot == NO_SLOT)
				return false;
			removeOneItemBySlot(slot);
			return true;
		}	
	}
}