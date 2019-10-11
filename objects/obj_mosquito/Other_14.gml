/// @description slam state

lastAct = mosquito.slam;
var deviation = 10;
direction = point_direction(x,y,obj_player.x,obj_player.y) + irandom_range(-deviation, deviation)//towards the player with 10 degree variation
speed = 3;
alarm[4] = 60;
acting = true;//is now currently in an action

if (direction >= 315 or direction < 45) {
	facing = 1;//right
	sprite_index = spr_mosquito_fly_side;
	image_xscale = 1;
} else if (direction >= 45 and direction < 135) {
	facing = 0;//up
	sprite_index = spr_mosquito_fly_up;
} else if (direction >= 135 and direction < 225) {
	facing = 4;//left
	sprite_index = spr_mosquito_fly_side;
	image_xscale = -1;
} else {
	facing = 3;//down
	sprite_index = spr_mosquito_fly_down;
}