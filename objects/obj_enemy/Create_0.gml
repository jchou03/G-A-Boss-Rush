/// @description Insert description here
// You can write your code in this editor

initialize_movement_entity(1,.5,obj_solid);
initialize_hurtbox_entity();

image_speed = 0;
max_health_ = 2;
health_ = max_health_;

starting_state_ = noone;
state_ = starting_state_;

enum enemy{
	hit
}