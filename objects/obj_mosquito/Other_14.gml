/// @description slam state

lastAct = mosquito.slam;
var deviation = 10;
direction = point_direction(x,y,obj_player.x,obj_player.y) + irandom_range(-deviation, deviation)//towards the player with 10 degree variation
speed = 2.5;
alarm[4] = 120;
acting = true;//is now currently in an action
attacking = true;