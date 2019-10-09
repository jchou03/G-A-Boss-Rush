/// @description move state
var _player_distance = distance_to_object(obj_player);

if(alarm[2] <= 0){
	if(_player_distance <= 64){
		//alarm[3] = global.one_second * random(3);
		state_ = snake.tail;
	}else if(_player_distance > 64){
		attack_counter_ = irandom(4);
		state_ = snake.venom;
	}
	
}

speed_ = 2;
image_xscale = sign(lengthdir_x(speed_,direction_));
//image_angle = direction_;
move_movement_entity(true);