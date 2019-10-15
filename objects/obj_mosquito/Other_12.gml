/// @description fly state

invincible_ = true;
lastAct = mosquito.fly;
acting = true;
var deviation = 100;
var destX = obj_player.x + irandom_range(-deviation, deviation);
var destY = obj_player.y + irandom_range(-deviation, deviation);

direction = point_direction(x, y, destX, destY);
var time = 150;
speed = point_distance(x, y, destX, destY) / time;
alarm[2] = time;
sprite_index = spr_mosquito_fly;