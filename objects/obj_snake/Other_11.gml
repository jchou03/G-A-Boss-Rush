/// @description burrow state

// find closest hole and head towards it
var _hole = instance_nearest(x,y,obj_hole);
show_debug_message(string(_hole));
direction_ = point_direction(x,y,_hole.x,_hole.y);
speed_ = 2;
move_movement_entity(true);
// randomly chose another hole and go to it
