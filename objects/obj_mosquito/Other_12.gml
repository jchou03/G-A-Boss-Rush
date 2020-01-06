/// @description fly state

invincible_ = true;
lastAct = mosquito.fly;
acting = true;
var deviation = 150;
var destX = obj_player.x + cos(irandom_range(.5*pi, 1.5*pi)) * deviation;
var destY = obj_player.y + sin(irandom_range(.5*pi, 1.5*pi)) * deviation;

direction = point_direction(x, y, destX, destY);
var time = 150;
speed = point_distance(x, y, destX, destY) / time;
alarm[2] = time;

sprite_index = spr_mosquito_fly_side;