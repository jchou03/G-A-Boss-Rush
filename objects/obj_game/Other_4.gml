/// @description 

if(global.load == true){
	global.player_start_position = instance_position(global.start_x,global.start_y,obj_start_position);
	global.load = false;
}

if instance_exists(global.player_start_position){
	if(instance_exists(obj_player)){
		obj_player.persistent = false;
		obj_player.x = global.player_start_position.x;
		obj_player.y = global.player_start_position.y;
		obj_player.layer = layer_get_id("Instances");
	}else{
		var _start_x = global.player_start_position.x;
		var _start_y = global.player_start_position.y;
		instance_create_layer(_start_x,_start_y,"Instances",obj_player);
	}
}