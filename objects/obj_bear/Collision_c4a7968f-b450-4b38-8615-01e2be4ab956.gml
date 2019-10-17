/// @description Insert description here
// You can write your code in this editor

if(health_ <= 0) exit;
if hurtbox_entity_can_be_hit_by(other){
	invincible_ = true;
	alarm[0] = global.one_second * 0.5;
	//Other refers to the hitbox, since we are interacting with it right now
	health_ -= other.damage_;
	audio_play_sound(a_hit,7, false);
	state_ = enemy.hit;
}