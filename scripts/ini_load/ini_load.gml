///@arg file_name
var _file_name = argument0;

if!(file_exists(_file_name)) exit;

global.load = true;
ini_open(_file_name);

var _room_name = ini_read_string("Level","Room","");
global.start_x = ini_read_real("Level","Start x", 0);
global.start_y = ini_read_real("Level","Start y", 0);
//global.item[0] = ini_read_real("Inventory","Slot 1",noone);
//global.item[1] = ini_read_real("Inventory","Slot 2", noone);
global.player_max_health = ini_read_real("Player","Max health", 1);
global.player_health = ini_read_real("Player","Health", global.player_max_health);
global.player_max_stamina = ini_read_real("Player", "Max stamina", 1);
global.player_stamina = global.player_max_stamina;
global.inventory = ini_read_inventory("Player","Inventory",[]);
global.item = ini_read_inventory("Player","Item",[]);
global.destroyed = ini_read_string_array("World","Destroyed objects",[]);

ini_close();

if(_room_name == ""){
	show_error("No save data",false);
}
var _room = asset_get_index(_room_name);



room_goto(_room);




