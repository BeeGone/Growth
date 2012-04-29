package com.beegone.core
{
	import com.beegone.core.enums.*;
	import com.beegone.core.interfaces.*;
	import com.beegone.core.prototypes.IdentifyablePrototype;

	public class Item extends IdentifyablePrototype implements Descriptable
	{
		private var _equipable:Boolean;
		private var _equipmentType:EquipmentTypes = EquipmentTypes.NONE;

		private var _consumable:Boolean;
		private var _usable:Boolean;

		private var _effects:Object;

		private var _description:String;

		public function Item(equipable:Boolean, type:EquipmentTypes, consumable:Boolean, usable:Boolean, description:String)
		{
			_equipable = equipable;
			_consumable = consumable;
			_usable = usable;
		
			if _equipable {
				_effects["equip"] = new Array();
				_equipmentType = type;
			}
			
			if _consumable {
				_effects["consume"] = new Array();
			}
			
			if _usable {
				_effects["use"] = new Array();
			}
		}

		public function set description(_description:String){
			this._description = _description;
		}
		public function get description(){
			return _description;
		}

		public function get effects(){
			return _effects;
		}
		
		public function addEffect(item:ItemTypes, effect:ItemEffect):Boolean {
			var temp:Array;
			if(item == ItemTypes.EQUIPABLE && _equipable) {
				temp = _effects["equip"];
			} else if (item == ItemTypes.CONSUMABLE && _consumable) {
				temp = _effects["consume"];
			} else if (item == ItemTypes.USABLE && _usable) {
				temp = _effects["use"];
			}
			if (temp != null) {
				temp.push(effect);
				return true
			}
			return false;
		}
	}
}