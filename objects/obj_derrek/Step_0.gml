/// @description Insert description here
// You can write your code in this editor

//depth = -y;
//if health_ <= 0 && state_ != enemy.hit{
//	instance_destroy();
//}
//if(state_ != noone){
//	event_user(state_);
//}
if(animation_hit_frame(11)){
	image_speed = 0;
	image_index = 0;
}
if (attacking = 0){
	oil_attack();
	attacking = 1;
	alarm[2] = .7 * global.one_second;
	image_speed = 2;
}

if (frame_busy = 0){
	if (idle_frame == 1 || idle_frame == 2){
		alarm[4] = 32;
		frame_busy = 1;
	}
	else if (idle_frame == 3 || idle_frame == 4){
		alarm[5] = 32;
		frame_busy = 1;
	}
	if (idle_frame < 4){
		idle_frame += 1;	
	}
	else {
		idle_frame = 1;	
	}
}