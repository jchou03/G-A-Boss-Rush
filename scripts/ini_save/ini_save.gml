///@arg file_name
// script for saving the game
var _file_name = argument0;

// reset the save file when you save
if file_exists(_file_name) file_delete(_file_name);

ini_open(_file_name);

ini_write_string("Level","Room",room_get_name(room));
ini_write_real("Level","Start x", global.player_start_position.x);
ini_write_real("Level","Start y", global.player_start_position.y);
//ini_write_real("Inventory","Slot 1", global.item[0]);
//ini_write_real("Inventory","Slot 2", global.item[1]);
ini_write_real("Player","Max health", global.player_max_health);
ini_write_real("Player","Health", global.player_health);
ini_write_real("Player","Max stamina", global.player_max_stamina);
ini_write_inventory("Player","Inventory",global.inventory);
ini_write_inventory("Player","Item",global.item);
ini_write_string_array("World","Destroyed objects", global.destroyed);

ini_close();
