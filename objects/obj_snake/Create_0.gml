event_inherited();
image_speed = 0.5;

max_health_ = 50;
health_ = max_health_;
state_ = snake.venom;

enum snake{
	hit,
	burrow,
	venom,
	bite,
	tail
}