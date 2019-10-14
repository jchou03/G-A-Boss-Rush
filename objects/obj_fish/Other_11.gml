/// @description Insert description here
// You can write your code in this editor
if(instance_exists(obj_player) && attack_counter_ > 0){
	
	image_xscale = sign(lengthdir_x(point_distance(x,y,obj_player.x,obj_player.y),point_direction(x,y,obj_player.x,obj_player.y)))
	
	if(alarm[1] <= 0){
		var _wind_slash = instance_create_layer(x,y,"Instances",obj_wind_slash)

		var _distance = point_distance(x,y,obj_player.x,obj_player.y)
		var _error = _distance/5
		var _direction = point_direction(x,y,obj_player.x+irandom_range(-_error/2,_error/2),obj_player.y+irandom_range(-_error/2,_error/2))

		_wind_slash.direction = _direction;
		_wind_slash.speed = 2;
		alarm[1] = global.one_second * random(1);
		attack_counter_--;
	}
}else{
	state_ = fish.idle;
}