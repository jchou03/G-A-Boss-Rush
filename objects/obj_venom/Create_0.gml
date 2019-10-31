event_inherited();
image_speed = 0;
image_index = 0;
targets_ = [obj_player]

collision_ = false;

state_ = venom.projectile;

enum venom{
	projectile,
	puddle
}