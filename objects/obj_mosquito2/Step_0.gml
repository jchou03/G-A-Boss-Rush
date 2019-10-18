/// @description frame by frame update

depth = -y;
if (health <= 0  or !instance_exists(obj_player)) {
	instance_destroy();
}
if (!acting) {
	if (distance_to_object(obj_player) > attackDist1) {
		state = mosquito2.move;
		event_user(state);
	} else {
		state = mosquito2.bite;
		event_user(state);
	}
} else if (attacking) {
	create_hitbox(spr_small_mosquito_side,x,y,direction,10,[obj_player],1,5);
}

if (direction >= 270 or direction < 90) {
	image_xscale = 1;
} else {
	image_xscale = -1;
}