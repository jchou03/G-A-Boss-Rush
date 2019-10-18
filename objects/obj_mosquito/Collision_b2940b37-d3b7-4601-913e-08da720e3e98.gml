/// @description hurt

if(health_ <= 0 or invincible_) exit;
if hurtbox_entity_can_be_hit_by(other){
	state = mosquito.hurt;
	event_user(state);
	//Other refers to the hitbox, since we are interacting with it right now
	health_ -= other.damage_;
	audio_play_sound(a_hit,7, false);
	
	var _knockback_direction = point_direction(other.x,other.y,x,y);
	create_animation_effect(spr_hit_effect,x,y-8,1,true);
	set_movement(_knockback_direction, other.knockback_);
}