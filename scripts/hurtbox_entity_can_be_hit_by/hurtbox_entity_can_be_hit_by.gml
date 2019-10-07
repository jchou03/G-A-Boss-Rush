/// @arg hitbox

var _hitbox = argument0;
if(instance_exists(object_index)){
	var _is_target = is_target(object_index, _hitbox.targets_);
}

return !invincible_ and _is_target;
