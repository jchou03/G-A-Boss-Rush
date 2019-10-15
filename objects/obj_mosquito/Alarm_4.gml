/// @description slam alarm

if (irandom_range(0, 100) <= 75) {//75% chance
	speed = 0;
	acting = false;
	attacking = false;
} else {
	event_user(state);//repeat
}