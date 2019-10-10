/// @description tail attack state
if(tail_attack_ == false){
	var _hitbox = create_hitbox(spr_sword_hitbox,x,y,direction_,global.one_second/2,[obj_player],2,8);
	_hitbox.visible = true;
	_hitbox.layer = layer_get_id("Effects");
	_hitbox.depth = depth-1;
	tail_attack_ = true;
	alarm[4] = global.one_second/2;
}
if(alarm[4] <= 0){
	state_ = snake.idle;
	tail_attack_ = false;
	alarm[3] = global.one_second
}