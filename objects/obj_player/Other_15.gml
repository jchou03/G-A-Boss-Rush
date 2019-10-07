/// @description Found Item State
if alarm[2] <= 0 || obj_input.action_one_pressed_ || obj_input.action_two_pressed_{
	state_ = starting_state_;
	found_item_sprite_ = noone;
	invincible_ = false;
}
