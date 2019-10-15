/// @description frame by frame update

depth = -y;
if health <= 0 {
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
	create_hitbox(spr_bomb_hitbox,x,y,direction,10,[obj_player],1,5);
}