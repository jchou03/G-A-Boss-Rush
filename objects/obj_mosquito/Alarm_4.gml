/// @description slam alarm

if (irandom_range(0, 100) >= (health_ / max_health_) * 50 + 25) {//75% chance to start, then goes down as it loses health to 25%
	speed = 0;
	acting = false;
	attacking = false;
} else {
	event_user(state);//repeat
}