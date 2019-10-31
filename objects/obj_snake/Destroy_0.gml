/// @description increase health and go to next boss
global.player_max_health ++;
global.player_health = global.player_max_health;
global.player_max_stamina ++;
room_goto_next()