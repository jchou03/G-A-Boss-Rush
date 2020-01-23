room_goto(r_text);


room_instance_clear(r_text);

show_debug_message("the text object is: " + string(text_object_));

var _text = room_instance_add(r_text, 0, 0, text_object_);
