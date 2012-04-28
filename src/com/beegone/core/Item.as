package com.beegone.core
{
	import com.beegone.core.enums.*;
	import com.beegone.core.interfaces.*;
	import com.beegone.core.prototypes.Identifyable;

	public class Item extends Identifyable implements Descriptable
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
				_effects.equip = new Array();
				_equipmentType = type;
			}
			
			if _consumable {
				_effects.consume = new Array();
			}
			
			if _usable {
				_effects.use = new Array();
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
		
		public function addEffect(target:EquipmentTypes, 
	}
}