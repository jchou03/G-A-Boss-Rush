/// @description slam alarm

if (irandom_range(0, 1)) {//50% chance
	speed = 0;
	acting = false;
} else {
	event_user(state);//repeat
}