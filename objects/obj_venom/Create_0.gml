event_inherited();
image_speed = 1;
image_index = 0;
image_angle = direction;
targets_ = [obj_player]

collision_ = false;

state_ = venom.projectile;

enum venom{
	projectile,
	puddle
}