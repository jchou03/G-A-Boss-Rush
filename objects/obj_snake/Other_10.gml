move_movement_entity(true);
apply_friction_to_movement_entity();

if(speed_ == 0){
	state_ = starting_state_;
	alarm[3] = global.one_second * random(5);
}
