package com.beegone.core.managers
{
	import com.beegone.core.Inventory;

	public class InventoryManager
	{
		public static const DEFAULT_SIZE = 8;
		public static const DEFAULT_STACKABLE = false;
		
		private var playerInventory:Inventory;
		private var locationInventories:Object;
		private var chestInventories:Object;
		
		public function InventoryManager()
		{
			locationInventories = new Object();
			chestInventories = new Object();
		}
		
		public function registerLocation(uid:String):Boolean {
			return registerCustomLocation(uid, DEFAULT_SIZE, DEFAULT_STACKABLE);
		}
		
		public function registerCustomLocation(uid:String, size:Number, stackable:Boolean):Boolean {
			if(locationInventories.hasOwnProperty(uid))
				return false;
			locationInventories[uid] = new Inventory(size, stackable);
			return true;
		}
		
		
	}
}