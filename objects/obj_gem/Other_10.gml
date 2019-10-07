/// @description Insert description here
if !(can_pickup_){
	exit;
}

instance_destroy();
global.player_gems ++;
audio_play_sound(a_collect_item, 2, false);