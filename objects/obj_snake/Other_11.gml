/// @description burrow state


// find closest hole and head towards it
var _hole = instance_nearest(x,y,obj_hole);
show_debug_message(string(_hole));
direction_ = point_direction(x,y,_hole.x,_hole.y);
speed_ = 2;
move_movement_entity(true);

// once entering a hole, chose a random hole and go to it
if(position_meeting(x,y,_hole)){
	image_speed = 0.5;
	// sprite stuff
	sprite_index = spr_snake_hole_dive;
	if(animation_hit_frame(9)){
		// temporarily deactivate the hole the snake is entering to remove it from the possible exit holes
		instance_deactivate_object(_hole);
	
		// create an array of all the possible exit holes
		var _all_holes = [];
		for(var i = 0; i < instance_number(obj_hole); i++){
			_all_holes[i] = instance_find(obj_hole,i);
			show_debug_message(instance_find(obj_hole,i));
		}
		// randomly chose a new hole to exit from
		var _new_hole = _all_holes[irandom(instance_number(obj_hole)-1)];
		// reactivate the enter hole
		instance_activate_object(_hole);
		// go to the new hole
		if(instance_exists(_new_hole)){
			sprite_index = 0
			burrow_ = true;
			x = _new_hole.x;
			y = _new_hole.y;
		}
	}
	if(animation_hit_frame(9)){
		alarm[3] = global.one_second * random(2);
		sprite_index = spr_snake;
		state_ = snake.idle;
	}
}