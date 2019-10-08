event_inherited();
image_speed = 0.5;

max_health_ = 15;
health_ = max_health_;
state_ = snake.venom;

attack_counter_ = 5;

enum snake{
	hit,
	burrow,
	venom,
	bite,
	tail,
	move,
	idle
}