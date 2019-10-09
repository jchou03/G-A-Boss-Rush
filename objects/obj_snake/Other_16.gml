/// @description idle state

var _direction_choice = random(360);

direction_ = point_direction(x,y,obj_player.x,obj_player.y) + _direction_choice;

if(alarm[3] <= 0){
	alarm[2] = global.one_second * random(2);
	state_ = snake.move;
}