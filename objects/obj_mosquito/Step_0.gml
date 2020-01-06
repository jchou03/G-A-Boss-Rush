/// @description frame by frame update

depth = -y;
if (health_ <= 0 or !instance_exists(obj_player)) {
	//if it is dead or if the player is dead
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

//jank however I do not currently care
if (x < 64) x = 64;
else if (x > 320) x = 320;
if (y < 64) y = 64;
else if (y > 320) y = 320;

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
		if (attack <= 3) {
			state = mosquito.bite;//bite attack
			event_user(state);
		} else if (attack > 3) {
			state = mosquito.fly;//fly to a new position
			if (state != lastAct) event_user(state);
		}
	}
} else if (attacking) {
	create_hitbox(spr_mosquito_fly_side,x,y,0,10,[obj_player],1,5);	
}

if (direction >= 270 or direction < 90) {
	facing = 1;//right
	sprite_index = spr_mosquito_fly_side;
	image_xscale = 1;//setting the image back to not-inverted
} else {
	facing = 4;//left
	sprite_index = spr_mosquito_fly_side;
	image_xscale = -1;//inverting the image
}