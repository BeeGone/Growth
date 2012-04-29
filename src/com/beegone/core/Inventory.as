package com.beegone.core
{
	public class Inventory
	{
		private var _items:Array;
		private var _size:Number;
		private var _stackable:Boolean;
		
		public function Inventory(size:Number, stackable:Boolean)
		{
			_items = new Array();
			_size = size;
			_stackable = stackable;
		}
		
		
		
		// Not good!!
		public function addItem(item:Item):Boolean {			
			return addItemStack(new ItemStack(item));
		}
		
		public function addItemStack(itemStack:ItemStack):Boolean {
			if(_items.length >= _size) {
				return false;
			}
			_items.push(itemStack);
			return true;
		}
	}
}