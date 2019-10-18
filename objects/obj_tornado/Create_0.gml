/// @description Insert description here
// You can write your code in this editor
event_inherited();
image_speed = 0;
image_index = 0;
targets_ = [obj_player]

collision_ = false;

state_ = hurricane.projectile;

direction = point_direction(x,y,object1.x,object1.y);

speed = 4;
image_angle = direction;

enum hurricane{
	projectile
}