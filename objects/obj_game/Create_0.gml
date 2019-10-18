global.one_second = game_get_speed(gamespeed_fps);
global.destroyed = [];
instance_create_layer(0,0,"Instances",obj_input);

var _font_string = "ABCDEFGHIJKLMNOPQRSTUVWXYZ.abcdefghijklmnopqrstuvwxyz1234567890>,!':-+";
global.font = font_add_sprite_ext(spr_font,_font_string,true,1);
draw_set_font(global.font);

global.player_max_health = 5;
global.player_health = global.player_max_health;
global.player_max_stamina = 6;

global.player_stamina = global.player_max_stamina;
global.player_gems = 0;
global.start_x = noone;
global.start_y = noone;

global.player_start_position = i_game_start;
global.load = false;
//audio_play_sound(a_music, 10, true);

var _view_width = camera_get_view_width(view_camera[0]);
var _view_height = camera_get_view_height(view_camera[0]);

display_set_gui_size(_view_width,_view_height);


paused_ = false;
paused_sprite_ = false;
paused_sprite_scale_ = display_get_gui_width()/view_wport[0];

item_index_ = 0;
global.item[0] = noone;
global.item[1] = noone;

inventory_create(6);
inventory_add_item(obj_ring_item);
inventory_add_item(obj_sword_item);
inventory_add_item(obj_bomb_item);
inventory_add_item(obj_bow_item);

//randomize the seed
randomize();

//z-titling setup
gpu_set_ztestenable(true)
gpu_set_zwriteenable(true)
