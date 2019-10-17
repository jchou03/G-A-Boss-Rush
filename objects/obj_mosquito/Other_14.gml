/// @description slam state

lastAct = mosquito.slam;
var deviation = 10;
direction = point_direction(x,y,obj_player.x,obj_player.y) + irandom_range(-deviation, deviation)//towards the player with 10 degree variation
speed = 2.5;
alarm[4] = 120;
acting = true;//is now currently in an action
attacking = true;

if (direction >= 270 or direction < 90) {
	facing = 1;//right
	sprite_index = spr_mosquito_fly_side;
	image_xscale = 1;
} else {
	facing = 4;//left
	sprite_index = spr_mosquito_fly_side;
	image_xscale = -1;
}