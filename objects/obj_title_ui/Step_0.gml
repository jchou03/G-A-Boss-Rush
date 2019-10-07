var _last_index = index_;

if(obj_input.up_pressed_){
	index_ = max(--index_, 0);
}
if(obj_input.down_pressed_){
	index_ = min(++index_,option_length_-1);
}

if(_last_index != index_){
	audio_play_sound(a_menu_move,1,false);
}

if(obj_input.action_one_pressed_ || keyboard_check_pressed(vk_enter)){
	switch(index_){
		case options.continue_game:
			audio_play_sound(a_menu_select,1,false);
			ini_load("save_data.ini");
			break;
		case options.new_game:
			instance_create_layer(5,5,"Instances",obj_grass);
			show_debug_message("new game");
			audio_play_sound(a_menu_select,1,false);
			room_goto(r_world);
			break;
		case options.credits:
			audio_play_sound(a_menu_select,1,false);
			show_debug_message("Credits");
			break;
		case options.quit:
			audio_play_sound(a_menu_select,1,false);
			game_end();
			break;
	}
}