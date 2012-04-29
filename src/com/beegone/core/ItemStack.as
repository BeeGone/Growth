package com.beegone.core
{
	public class ItemStack
	{
		private var _item:Item;
		private var _amount:Number;
		
		public function ItemStack(item:Item, size:Number)
		{
			_item = item;
			_amount = size;
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
		
		public function get item():Number {
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
			if(!_item.equals(item)) {
				return false;
			}
			if(_item.maxStack >= _amount){
				return false;
			}
			_amount++;
			return true;
		}
		
		public function addAmount(amount:Number):Number {
			_amount += amount;
		}
		
		public function set amount(value:Number) {
			_amount = value;
		}
		
		public function mergeStacks(stack:ItemStack):Number {
			if(!isFull() && _item.equals(stack.item)) {
				var addStackAmount:Number = stack.amount;
				//TODO Finish this!
			}
			return stack.amount;
			
		}
		
		public function get weight():Number {
			return _amount * _item.weight;
		}
	
	}
}