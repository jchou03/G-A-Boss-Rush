/// @description burrow state

// find closest hole and head towards it
var _hole = instance_nearest(x,y,obj_hole);
show_debug_message(string(_hole));
direction_ = point_direction(x,y,_hole.x,_hole.y);
speed_ = 2;
move_movement_entity(true);

if(position_meeting(x,y,_hole)){
	// randomly chose another hole and go to it
	instance_deactivate_object(_hole);
	// crate 
	var _all_holes = [];
	for(var i = 0; i < instance_number(obj_hole); i++){
		_all_holes[i] = instance_find(obj_hole,i);
		show_debug_message(instance_find(obj_hole,i));
	}
	var _new_hole = _all_holes[irandom(instance_number(obj_hole)-2)];
	instance_activate_object(_hole);
	if(instance_exists(_new_hole)){
		x = _new_hole.x;
		y = _new_hole.y;
	}
	state_ = snake.idle;
}