/// @description Insert description here

if (instance_exists(obj_player)) {
	
	image_xscale = sign(lengthdir_x(point_distance(x,y,obj_player.x,obj_player.y),point_direction(x,y,obj_player.x,obj_player.y)))
	
	if (alarm[1] <= 0) {
		instance_create_layer(obj_player.x,"Wind slash",obj_player.y,obj_wind_slash);
	}
};