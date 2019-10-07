event_inherited();
initialize_movement_entity(.25,.5,obj_solid);

enum bat{
	hit,
	move,
	attack
}

direction_ = random(360);
starting_state_ = bat.move;
state_ = starting_state_;
alarm[2] = global.one_second * random_range(1,3);
range_ = 64;
image_index = 0;
image_xscale = choose(1,-1);