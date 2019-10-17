event_inherited();
image_speed = 0.5;

max_health_ = 12;
health_ = max_health_;
starting_state_ = snake.idle;
state_ = starting_state_;

// variable for number of venom attacks
attack_counter_ = 4;
// variable for whether tail has attacked yet
tail_attack_ = false;
// variable for checking burrow
burrow_ = false;

enum snake{
	hit,
	burrow,
	venom,
	bite,
	tail,
	move,
	idle
}