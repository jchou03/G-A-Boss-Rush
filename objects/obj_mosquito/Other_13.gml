/// @description bite state

acting = true;
attacking = true;
lastAct = mosquito.bite;
speed = .5;
direction = point_direction(x,y,obj_player.x,obj_player.y);
sprite_index = spr_mosquito_land;
alarm[3] = 60;