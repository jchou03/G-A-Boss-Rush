
text_part_ = string_copy(text[index_], 1, char_count_)

char_count_ += play_speed_;
show_debug_message("width of text display: " + string(camera_get_view_width(view_current)-10))
draw_text_ext_transformed(5, 5, text_part_, 15, 320, text_scale_, text_scale_, 0)
