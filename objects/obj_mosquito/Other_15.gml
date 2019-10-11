/// @description swarm state

lastAct = mosquito.swarm;
speed = 0;
sprite_index = spr_mosquito_land;
alarm[5] = 60;
state = mosquito.idle;
event_user(state);