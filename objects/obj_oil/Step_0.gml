/// @description Insert description here
// You can write your code in this editor

depth = -y;

if (go_time = 0 && distance_to_object(obj_drop) < 1){
	go_time = 1;
	alarm[0] = 2 * global.one_second;
}

if (go_time = 1){
	if (on_fire = 0){
		image_speed = 2;

		if(animation_hit_frame(7)){
			image_speed = 0;
			image_index = 7;
		}
	}
	else {
		sprite_index = spr_oil_fire;
		image_speed = 1;
	}
}