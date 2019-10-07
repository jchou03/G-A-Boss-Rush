/// @description Insert description here
// You can write your code in this editor


depth = -y;
//Run the state every turn, and state_ is counting as an array, so move is state = 0
event_user(state_);
//Update sprite
sprite_index = sprite_[state_,direction_facing_];

if global.player_health <= 0 and !invincible_{
	instance_destroy();
}
