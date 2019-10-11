/// @description Insert description here
// You can write your code in this editor

if(state_ = fire.ball){
	event_user(state_);
}
if((place_meeting(x,y,obj_player) || place_meeting(x,y,obj_solid)) && collision_ == false){
	collision_ = true;
	state_ = fire.ground;
	event_user(state_);
	alarm[1] = global.one_second;
}