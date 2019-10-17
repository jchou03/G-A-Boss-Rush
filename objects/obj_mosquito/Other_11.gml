/// @description movement state

var deviation = 60;
direction = point_direction(x,y,obj_player.x,obj_player.y) + irandom_range(-deviation, deviation)//towards the player with 10 degree variation
speed = 2;
alarm[1] = 20;
acting = true;//is now currently in an action