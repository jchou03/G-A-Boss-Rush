///@arg boss_x
///@arg boss_y
///@arg next_room_text_object

var _x = argument0;
var _y = argument1;
var _text_object = argument2;


global.player_max_health ++;
global.player_health = global.player_max_health;
global.player_max_stamina ++;

show_debug_message("lol did the stuff");
var _next_fight = instance_create_layer(_x, _y, "Effects", obj_next_fight);
// set up movement to next room after text is done
_next_fight.text_object_ = _text_object;

