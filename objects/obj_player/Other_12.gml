/// @description Evade State

image_speed = 2;

if animation_hit_frame(0) audio_play_sound(a_evade,3,false);
invincible_ = true;
if(image_index < 16){
	set_movement(roll_direction_ , roll_speed_);
	
}else{
	set_movement(roll_direction_, roll_decay_speed_);
	roll_decay_speed_ -= (roll_decay_speed_/30)
}
move_movement_entity(false);

if animation_hit_frame(image_number-1) {
	invincible_ = false;
	state_ = player.move;
}