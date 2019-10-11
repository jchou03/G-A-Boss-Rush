/// @description frame by frame update

depth = -y;
if health <= 0 {
	instance_destroy();
}
if (!acting) {
	state = mosquito2.move;
	event_user(state);
}