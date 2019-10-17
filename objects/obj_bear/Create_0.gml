/// @description Insert description here
// You can write your code in this editor

event_inherited();

enum bear {hit, move, attack, idle} 

max_health_ = 4; //or whatever we want
health_ = max_health_;
starting_state_ = bear.idle;
//Have starting state be 'pace' later on
state_ = starting_state_;
range_ = 2;

event_user(state_);