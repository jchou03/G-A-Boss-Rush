///@arg item_sprite

var _item_sprite = argument0;

if !instance_exists(obj_player) exit;

obj_player.state_ = player.found_item;
obj_player.found_item_sprite_ = _item_sprite;
obj_player.invincible_ = true;
obj_player.alarm[2] = global.one_second
audio_play_sound(a_key_item,6,false);
