/// @description Insert description here
// You can write your code in this editor

depth = -y;
//if health_ <= 0 && state_ != enemy.hit{
//	instance_destroy();
//}
//if(state_ != noone){
//	event_user(state_);
//}

if(animation_hit_frame(6)){			
	image_speed = 0;
	image_index = 0;
	firing = false;
}

if (firing == true){
		image_speed = 1;
}