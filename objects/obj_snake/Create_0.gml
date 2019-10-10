event_inherited();
image_speed = 0.5;

max_health_ = 15;
health_ = max_health_;
starting_state_ = snake.idle;
state_ = starting_state_;

attack_counter_ = 4;
tail_attack_ = false;

enum snake{
	hit,
	burrow,
	venom,
	bite,
	tail,
	move,
	idle
}