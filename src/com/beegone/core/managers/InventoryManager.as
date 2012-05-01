package com.beegone.core.managers
{
	import com.beegone.core.Inventory;
	import com.beegone.core.Item;
	import com.beegone.core.ItemStack;

	public class InventoryManager
	{
		public static const DEFAULT_SIZE = 8;
		public static const DEFAULT_LOCATION_STACKABLE = false;
		public static const DEFAULT_CHEST_STACKABLE = true;
		public static const DEFAULT_PLAYER_STACKABLE = true;
		
		private var playerInventory:Inventory;
		private var locationInventories:Object;
		private var chestInventories:Object;
		
		public function InventoryManager()
		{
			playerInventory = new Inventory(DEFAULT_SIZE, DEFAULT_PLAYER_STACKABLE);
			locationInventories = new Object();
			chestInventories = new Object();
		}
		
		public function get playerInventory():Inventory {
			return playerInventory;
		}
		
		public function playerPicksUp(locationSlot:String):Boolean {
			return false;
		}
		
		public function playerDrops(playerSlot:String):Boolean {
			return false;
		}
		
		public function playerStore(playerSlot:String, targetUid:String):Boolean {
			return false;	
		}
		
		public function playerRetrieves(targetSlot:String, targetUid:String):Boolean {
			return false;
		}
		
		//REGISTERS
		public function registerLocation(uid:String):Boolean {
			return registerCustomLocation(uid, DEFAULT_SIZE, DEFAULT_LOCATION_STACKABLE);
		}
		
		public function registerCustomLocation(uid:String, size:Number, stackable:Boolean):Boolean {
			if(locationInventories.hasOwnProperty(uid))
				return false;
			locationInventories[uid] = new Inventory(size, stackable);
			return true;
		}
		
		public function registerChest(uid:String):Boolean {
			return registerCustomChest(uid, DEFAULT_SIZE, DEFAULT_LOCATION_STACKABLE);
		}
		
		public function registerCustomChest(uid:String, size:Number, stackable:Boolean):Boolean {
			if(chestInventories.hasOwnProperty(uid))
				return false;
			chestInventories[uid] = new Inventory(size, stackable);
			return true;
		}
		//REMOVERS
		public function removeLocation(uid:String):Boolean {
			if(!locationInventories.hasOwnProperty(uid))
				return false;
			return delete locationInventories[uid];
		}
		
		public function removeChest(uid:String):Boolean {
			if(!chestInventories.hasOwnProperty(uid))
				return false;
			return delete chestInventories[uid];
		}
	}
}