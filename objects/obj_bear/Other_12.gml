/// @description Attack State
// You can write your code in this editor

state_ = bear.attack;
var _damage = 3;
var _knockback = 4;
var _player = instance_place(x,y,obj_player);
if _player != noone {
	create_hitbox(spr_bear_idle,x,y,0,1,[obj_player],_damage,_knockback);
}

if (!instance_exists(obj_player)){
	state_ = bear.idle;
	event_user(state_);
	exit;
} if (distance_to_object(obj_player) <= range_) {
	state_ = bear.attack;
	event_user(state_);
} else {
	event_user(bear.move);
}
