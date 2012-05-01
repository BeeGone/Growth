package com.beegone.core
{
	public class ItemStack
	{
		private var _item:Item;
		private var _amount:Number;
		
		public function ItemStack(item:Item, amount:Number)
		{
			_item = item;
			_amount = amount;
		}
		
		public function ItemStack(item:Item){
			_item = item;
			_amount = 1;
		}
		
		public function ItemStack(item:Item){
			_item = item;
			_amount = 1;
		}
		
		public function get itemStack():ItemStack {
			return this;
		}
		
		public function get oneItem():Item {
			if(_amount > 0){
				_amount--;
				return _item.clone();
			}
			return null;
		}
		
		public function get amount():Number {
			return _amount;
		}
		
		public function get item():Item {
			return _item;
		}
		
		public function isEmpty():Boolean {
			return _amount <= 0;
		}
		
		public function isFull():Boolean {
			return _amount > _item.maxStack;
		}
		
		public function get freeSpace():Boolean {
			return _item.maxStack - _amount;
		}
		
		public function addItem(item:Item):Boolean {
			//Check for free space
			if(_item.maxStack >= _amount){
				return false;
			}
			//Check special cases
			if(!_item.used || !_item.equals(item)) {
				return false;
			}
			_amount++;
			return true;
		}
		
		public function mutateAmount(amount:Number):Number {
			_amount += amount;
		}
		
		public function set amount(value:Number) {
			_amount = value;
		}
		
		public function mergeStacks(stack:ItemStack):Number {
			//Check not full and item from stack equals the stored item
			if(!isFull() && _item.equals(stack.item)) {
				//Check if stack fits.
				if(stack.amount + _amount <= _item.maxStack){
					_amount += stack.amount;
					stack.amount(0);
				} else { //Max out stack when not.
					stack.mutateAmount(_item.maxStack - _amount);
					_amount = _item.maxStack;
				}
				return stack.amount;
			}
			return stack.amount;
		}
		
		public function get weight():Number {
			return _amount * _item.weight;
		}
	
	}
}