/// @description Move State

image_speed = 0.5;

// if the wait alarm is done then do it
if(alarm[2] <= 0){
	set_direction_facing();
	//move duration alarm then move
	if(alarm[1] > 0){
		add_movement_maxspeed(direction_,0.05,0.5);
		move_movement_entity(true);
	}else{
		apply_friction_to_movement_entity();
	}
	if(speed_ == 0){
		alarm[2] = global.one_second * random_range(1,3);
		direction_ = random(360);
	}
}

if(instance_exists(obj_player) && distance_to_object(obj_player) <= range_){
	state_ = bat.attack;
}