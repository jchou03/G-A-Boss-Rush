///@arg boss_x
///@arg boss_y

var _x = argument0;
var _y = argument1;

global.player_max_health ++;
global.player_health = global.player_max_health;
global.player_max_stamina ++;

show_debug_message("lol did the stuff");
instance_create_layer(_x, _y, "Effects", obj_next_fight);