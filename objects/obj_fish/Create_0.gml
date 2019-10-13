/// @description 

event_inherited();
image_speed = 0.5;
max_health_ = 25;
state_ = fish.wind_slash;
health_ = max_health_;

enum fish{
	hit,
	blow,
	hurricane,
	spike,
	wind_slash,
	move,
	idle
}