show_debug_message("instance count:" + string(instance_count));

if(index_ >= array_length_1d(text)){
	show_debug_message("Please just show up");
	instance_create_layer(20, 20, "Instances", obj_porcupine);
	instance_destroy();
	room_goto(next_room_);
}

if(keyboard_check_pressed(vk_space)){
	if(text_end(text[index_], char_count_)){
		index_++
		char_count_ = 0
	}else{
		show_debug_message("skip time!");
		char_count_ = string_length(text[index_]);
	}
}
