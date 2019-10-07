/// @description Insert description here
if !(can_pickup_){
	exit;
}

instance_destroy();
global.player_health++;
// min() returns the value that is smallest out of the parameters
global.player_health = min(global.player_health, global.player_max_health);
audio_play_sound(a_collect_item, 2, false);