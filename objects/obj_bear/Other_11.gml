/// @description Move State
// You can write your code in this editor

if(instance_exists(obj_player)) {
	player_x = obj_player.x;
	player_y = obj_player.y;

	var _speed = 3;
	var _ratio = (player_y-obj_bear.y)/(player_x-obj_bear.x);
	var _direction = tan(_ratio);
	if(_direction > pi/4 && _direction < 3*pi/4) {
	//^ should change which animation it uses for every direction later, but Okalani hasn't made those yet.
		object_set_sprite(obj_bear, spr_bear_forward_walk);
	} else {
		object_set_sprite(obj_bear, spr_bear_idle);
	}
	var _suggested_x = obj_bear.x+(cos(_direction)*_speed);
	var _suggested_y = obj_bear.y+(sin(_direction)*_speed);
	if point_distance(x, y, _suggested_x, _suggested_y) > 5 {
		move_towards_point(_suggested_x, _suggested_y, 50);
	}
	else speed = 0;
}