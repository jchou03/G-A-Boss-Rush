if(variable_instance_exists(self, "text[index_]")){
	show_debug_message("Banananananannanaannanananananana");
}


if(keyboard_check_pressed(vk_space) && text_end(text[index_], char_count_)){
	if(text[index_] == noone){
		room_goto(next_room_)
	}
	index_++
	char_count_ = 0
}
