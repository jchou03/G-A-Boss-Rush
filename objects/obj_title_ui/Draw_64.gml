draw_set_halign(fa_center);
for(var i = 0; i < option_length_; i++){
	if(i == index_){
		draw_set_color(menu_color_);
	}else{
		draw_set_color(menu_dark_color_);
	}
	draw_text(x,y + i * 12, option_[i]);
}

// set the text back to text align left for the rest of the stuff
draw_set_color(c_white);
draw_set_halign(fa_left);