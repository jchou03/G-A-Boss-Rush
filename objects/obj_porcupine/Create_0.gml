/// @description Insert description here
// You can write your code in this editor

//Run parent create code first
event_inherited();
initialize_movement_entity(0.5, 0.5, obj_solid);

enum porcupine{
	hit,
	idle,
	move,
	attack,
	wait
}

max_health_ = 2;
health_ = max_health_;
starting_state_ = porcupine.idle;
state_ = starting_state_;

image_index = 0;
image_xscale = choose(1,-1);
alarm[1] = random_range(0,1);

alarm[1] = random_range(0,1) * global.one_second;