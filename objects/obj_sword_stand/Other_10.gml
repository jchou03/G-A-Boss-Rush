event_inherited();

if !instance_exists(obj_player) exit;

image_index = 0;
inventory_add_item(obj_sword_item);
set_player_found_item(spr_sword_item);
activatable_ = false;
add_to_destroyed_list(id);
