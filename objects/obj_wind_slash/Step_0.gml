/// @description Insert description here

if (state_ = wind_slash.projectile) {
	event_user(state_);
}
if((place_meeting(x,y,obj_player) || place_meeting(x,y,obj_solid)) && collision_ == false){
	collision_ = true;
	event_user(state_);
	alarm[1] = global.one_second;
}