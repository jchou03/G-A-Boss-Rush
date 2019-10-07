/// @description 

GET_INPUT = 0;
event_user(GET_INPUT);

//set the j and k buttons to the same functions as x and z
keyboard_set_map(ord("J"),ord("X"));
keyboard_set_map(ord("K"),ord("Z"));

keyboard_set_map(ord("E"),vk_enter);
keyboard_set_map(vk_escape, vk_enter);