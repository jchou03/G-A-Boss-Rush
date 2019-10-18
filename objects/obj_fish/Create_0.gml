/// @description Insert description here

event_inherited();
image_speed = 0.5;

max_health_ = 15;
health_ = max_health_;
state_ = fish.spike;
cooldown = 0;

attack_counter_ = 5;

enum fish{
	hit,
	wind_slash,
	hurricane,
	blow,
	spike,
	move,
	idle
}