/// @description Insert description here

event_inherited();
image_speed = 0;
image_index = 0;
targets_ = [obj_player]

collision_ = false;

state_ = wind_slash.projectile;

direction = point_direction(x,y,obj_player.x,obj_player.y);

speed = 4;
image_angle = direction;

enum wind_slash{
	projectile
}