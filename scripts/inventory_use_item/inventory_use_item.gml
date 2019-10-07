///@arg input
///@arg item
///@arg action
var _input = argument0;
var _item = argument1;
var _action = argument2;

if _input{
	var _target_x = x+lengthdir_x(8,direction_facing_*90);
	var _target_y = y+lengthdir_y(8,direction_facing_*90);
	var _interactable = instance_place(_target_x,_target_y,obj_interactable);
	if _interactable && _interactable.activatable_{
		with _interactable{
			event_user(interactable.activate);
		}
	}else if instance_exists(_item) && global.player_stamina >= _item.cost_{
		if (_item.show_amount_ == true && _item.amount_ > 0) _item.amount_ -= 1;
		else if (_item.show_amount_ == true && _item.amount_ <= 0) exit;
		action_ = _action;
		state_ = _item.action_;
		global.player_stamina = max(global.player_stamina - _item.cost_,0);
		image_index = 0;
		alarm[1] = global.one_second;
		
	}
}