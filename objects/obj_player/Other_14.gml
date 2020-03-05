/// @description Bow State
speed_ = 0;
var _bow_speed = 0.5;
image_speed = 0;

if(gun_ == noone){
	gun_ = instance_create_layer(x, y - 10, "Instances", obj_gun)
	gun_.image_speed = 0
}

if(direction_facing_ == dir.right || direction_facing_ == dir.left){ 
	gun_.image_xscale = image_xscale
	image_index = 1
}else if(direction_facing_ == dir.up) {
	//_gun.sprite_index = spr_gun_up
	image_index = 3
}else if(direction_facing_ == dir.down) {
	//_gun.sprite_index = spr_gun_down
	image_index = 0
}

/*

if animation_hit_frame(3){
	image_speed = 0;
	*/
	var _released = false;
	if(action_ = action.one){
		_released = !obj_input.action_one_;
	}else{
		_released = !obj_input.action_two_;
	}
	
	if _released{
		image_speed = _bow_speed;
		audio_play_sound(a_swipe,2,false);
		// create arrow
		var _arrow = instance_create_layer(x,y,"Instances",obj_arrow);
		//image angle isn't setting up properly
		_arrow.direction = direction_facing_ * 90;
		_arrow.image_angle = _arrow.direction;
		_arrow.speed = 4;
		switch direction_facing_{
			case dir.right: _arrow.y -= 4; break;
			case dir.up: _arrow.y -= 2; break;
			case dir.left: _arrow.y -= 4; break;
			default: break;
		}
	}
	
//}
with(gun_){
	if animation_hit_frame(image_number-1){
		show_debug_message("gun is done with animation");
		other.state_ = player.move;
		other.image_index = 0;
	}
}
