/// @description venom state

if(instance_exists(obj_player) && attack_counter_ > 0){
	
	image_xscale = sign(lengthdir_x(point_distance(x,y,obj_player.x,obj_player.y),point_direction(x,y,obj_player.x,obj_player.y)))
	
	if(alarm[1] <= 0){
		var _venom = instance_create_layer(x,y,"Instances",obj_venom)

		var _distance = point_distance(x,y,obj_player.x,obj_player.y)
		var _error = _distance/5
		var _direction = point_direction(x,y,obj_player.x+irandom_range(-_error/2,_error/2),obj_player.y+irandom_range(-_error/2,_error/2))

		_venom.direction = _direction;
		_venom.speed = 2;
		alarm[1] = global.one_second * random(1);
		attack_counter_--;
	}
}else{
	state_ = snake.idle;
}