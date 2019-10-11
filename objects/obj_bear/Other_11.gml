/// @description Move State
// You can write your code in this editor

player_x = obj_player.x;
player_y = obj_player.y;

var _speed = 3;
var _ratio = (player_y-obj_bear.y)/(player_x-obj_bear.x);
var _direction = tan(_ratio);
//if(_direction > pi/4 && _direction < 3*pi/4) {
//^ should change which animation it uses.
var _suggested_x = obj_bear.x+(cos(_direction)*_speed);
var _suggested_y = obj_bear.y+(sin(_direction)*_speed);
move_towards_point(