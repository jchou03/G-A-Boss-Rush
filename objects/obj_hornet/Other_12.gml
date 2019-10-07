/// @description Attack state

if (!instance_exists(obj_player)){
	state_ = hornet.move;
	exit;
}

apply_friction_to_movement_entity();
move_movement_entity(true);

if (distance_to_object(obj_player) > range_){
	state_ = hornet.move;
}

if(speed_ == 0){
	alarm[2] = global.one_second * random_range(2,4);
	var _direction = point_direction(x,y,obj_player.x,obj_player.y) + random_range(-15,15);
	var _stinger = instance_create_layer(x,y,"Instances",obj_stinger);
	_stinger.direction = _direction;
	_stinger.image_angle = _direction;
	_stinger.speed = 2;
	state_ = hornet.move;
}