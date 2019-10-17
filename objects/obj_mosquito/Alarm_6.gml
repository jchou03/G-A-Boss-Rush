/// @description hurt alarm

invincible_ = false;
var smolBoi = instance_create_layer(x, y, "Instances", obj_mosquito2);
smolBoi.speed = 3;
smolBoi.direction = point_direction(obj_player.x, obj_player.y, x, y);
smolBoi.direction += irandom_range(90,-90);
smolBoi.acting = true;
smolBoi.alarm[0] = 15;