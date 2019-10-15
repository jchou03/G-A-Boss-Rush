/// @description frame by frame update

depth = -y;
if health_ <= 0 {
	instance_destroy();
}
/*
//just moving; for testing
if (!acting) {
	state = mosquito.move;
	acting = true;
	event_user(state);
}
*/
if (!acting) {//not currently in an action
	var dist = distance_to_object(obj_player);
	if (dist > attackDist) {//too far away for any attack
		state = mosquito.move;//move closer to the player
		event_user(state);
	} else if (dist > attackDist2) {//close enough for longer range attacks
		var attack = irandom_range(1,2);//random attack
		switch (attack) {
			case 1:
				state = mosquito.slam;//slam attack
				if (state != lastAct) event_user(state);
				break;
			case 2:
				state = mosquito.swarm;//swarm attack
				if (state != lastAct) event_user(state);
				break;
		}
	} else {//close enough for short range attacks
		var attack = irandom_range(1,5);//random attack
		if (attack < 5) {
				state = mosquito.bite;//bite attack
				event_user(state);
		} else if (attack == 5) {
				state = mosquito.fly;//fly to a new position
				if (state != lastAct) event_user(state);
		}
	}
} else if (attacking) {
	create_hitbox(spr_bomb_hitbox,x,y,direction,10,[obj_player],1,5);	
}