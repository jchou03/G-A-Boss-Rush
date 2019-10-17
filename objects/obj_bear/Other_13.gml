/// @description Idle State
// You can write your code in this editor

image_speed = .35;
object_set_sprite(obj_bear, spr_bear_idle);
if(obj_bear.y >= 100) {
	move_towards_point(300, 64, 2);
} if(obj_bear.y <= 64) {
	move_towards_point(300, 100, 2);
}

if(instance_exists(obj_player) && distance_to_object(obj_player) <= 150) {
	event_user(bear.move);
}