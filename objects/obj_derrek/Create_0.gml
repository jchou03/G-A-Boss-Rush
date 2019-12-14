///// @description Insert description here
//// You can write your code in this editor

//initialize_movement_entity(1,.5,obj_solid);
//initialize_hurtbox_entity();

attacking = 0;

image_speed = 0;
max_health_ = 5;
health_ = max_health_;

starting_state_ = noone;
state_ = starting_state_;

randomize();

crab_dead = false;

i = 0;
while (i < 15){
	for(j = 0; j < 4; j++){
		global.ground[i, j] = 0
	}
	i++;
}


count = 0;
repeat (4){
show_debug_message(string(global.ground[0, count]) + string(global.ground[1, count]) + string(global.ground[2, count]) + string(global.ground[3, count]) + string(global.ground[4, count]) + string(global.ground[5, count]) + string(global.ground[6, count]) + string(global.ground[7, count]) + string(global.ground[8, count]) + string(global.ground[9, count]) + string(global.ground[10, count]) + string(global.ground[11, count]) + string(global.ground[12, count]) + string(global.ground[13, count]) + string(global.ground[14, count]));
count++;
}

idle_frame = 1;
frame_busy = 0;
