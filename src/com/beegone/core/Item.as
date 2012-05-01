package com.beegone.core
{
	import com.beegone.core.enums.*;
	import com.beegone.core.interfaces.*;
	import com.beegone.core.prototypes.IdentifyablePrototype;

	public class Item extends IdentifyablePrototype implements Descriptable
	{
		private var _maxStack:Number;
		private var _weight:Number;
		
		private var _equipable:Boolean;
		private var _equipmentType:EquipmentTypes;

		private var _consumable:Boolean;
		private var _usable:Boolean;
		private var _uses:Number;
		private var _used:Boolean;
		
		private var _effects:Object;

		private var _description:String;

		public function Item(uid:String, name:String, maxStack:Number, weight:Number, usable:Boolean, uses:Number, equipable:Boolean, type:EquipmentTypes, consumable:Boolean, description:String)
		{
			super(uid, name);
			_equipable = equipable;
			_weight = weight;
			_consumable = consumable;
			_usable = usable;
			_uses = uses;
			_used = false;
		
			if _equipable {
				_effects["equip"] = new Array();
				_equipmentType = type;
			} else {
				_equipmentType = EquipmentTypes.NONE;
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
		
		public function get description():String {
			return _description;
		}

		public function get effects():Object {
			return _effects;
		}
		
		public function get uses():Number {
			return _uses;
		}
		
		public function get maxStack():Number {
			return _maxStack;
		}
		
		public function get weight():Number {
			return weight;
		}
		
		public function get used():Boolean {
			return _used;
		}
		
		public function useItem(uses:Number):Boolean {
			if (!_used) {
				_used = true;
			}
			_uses -= uses;
			return _uses <= 0;
		}
		
		public function addEffect(item:ItemTypes, effect:ItemEffect):Boolean {
			var temp:Array = null;
			if(item == ItemTypes.EQUIPABLE && _equipable) {
				temp = _effects["equip"];
			} else if (item == ItemTypes.CONSUMABLE) {
				if (!_consumable) {
					_consumable = true;
					_effects["consume"] = new Array();
				}
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
		
		public function clone():Item {
			return new Item(this.uid, this.name, this._maxStack, this._weight, this._usable, this._uses, this._equipable, this._equipmentType, this._consumable, this._description);
		}
		
		
		public function isStackable(item:Item):Boolean
		{
			return equals(item) && !_used && !item.used;
		}		
	}
}