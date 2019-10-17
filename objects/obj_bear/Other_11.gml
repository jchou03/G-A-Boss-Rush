/// @description Move State
// You can write your code in this editor

if(state_ != bear.move) {
	audio_play_sound(a_porcupine_attack, 5, false); 
	player_x = obj_player.x;
	player_y = obj_player.y;

	var _speed = 3;
	var _ratio = (player_y-obj_bear.y)/(player_x-obj_bear.x);
	var _direction = tan(_ratio);
	var _countdown = 10;

} else {
	state_ = bear.move;
}

if(_direction > pi/4 && _direction < 3*pi/4) {
//^ should change which animation it uses for every direction later, but Okalani hasn't made those yet.
	object_set_sprite(obj_bear, spr_bear_forward_walk);
} else {
	object_set_sprite(obj_bear, spr_bear_idle);
}
move_towards_point(player_x, player_y, 2);

var _suggested_x = obj_bear.x+(cos(_direction)*_speed);
var _suggested_y = obj_bear.y+(sin(_direction)*_speed);

move_towards_point(_suggested_x, _suggested_y, 2);

if(distance_to_object(obj_player) <= range_) {
	state_ = bear.attack;
	event_user(state_);
}
