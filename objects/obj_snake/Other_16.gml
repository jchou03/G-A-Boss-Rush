/// @description idle state

var _direction_choice = random(360);
var _attack = irandom(1);
if(health_%4 = 0){
	if(irandom(1) == 1) state_ = snake.burrow;
}
switch(_attack){
	case 0:
		direction_ = point_direction(x,y,obj_player.x,obj_player.y) + _direction_choice;
		break;
	case 1:
		direction_ = point_direction(x,y,obj_player.x,obj_player.y);
		tail_attack_ = true;
		break;
}

if(alarm[3] <= 0){
	alarm[2] = global.one_second * random(2);
	state_ = snake.move;
}