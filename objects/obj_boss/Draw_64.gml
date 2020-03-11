/// @description Insert description here

var _leftover_width = display_get_gui_width() - sprite_get_width(health_bar_sprite_)
var _health_start = _leftover_width/2

// draw the segements of health
var _inside_width = sprite_get_width(health_bar_sprite_)-(2 * inside_health_width_)
var _px_per_health = _inside_width/max_health_
var _filled = health_ * _px_per_health


for(var i = 0; i < _inside_width; i++){
	if(i < _filled)	draw_sprite(health_sprite_, 0, _health_start + inside_health_width_ + i, top_health_bar_offset_)
	else draw_sprite(health_sprite_, 1, _health_start + inside_health_width_ + i, top_health_bar_offset_)
}

// draw the health bar
draw_sprite(health_bar_sprite_, 0, _health_start, 0)


/*
// variables for centering and scaling health bar
var _leftover_width = display_get_gui_width() - (sprite_get_width(end_sprite_) * 2) - (sprite_get_width(health_sprite_)*max_health_);

//show_debug_message("camera width: " + string(display_get_gui_width()));
//show_debug_message("sprite width: " + string(sprite_get_width(spr_stamina_ui)*max_health_));
//show_debug_message("leftover width" + string(_leftover_width));

var _health_start
if(_leftover_width <= 5){
	_health_start = 5
}else{
	_health_start = _leftover_width/2;
}
// calculate what the image_xscale for each of the health sprites need to be in order to fit onto the screen
// sp	ace left for one health bar to fit into
var _space_per_health = sprite_get_width(health_sprite_)
if(_leftover_width <= 5) _space_per_health = (display_get_gui_width()-10)/max_health_;
var _xscale = 1;
if(_health_start == 5) _xscale = _space_per_health/sprite_get_width(health_sprite_);

//show_debug_message("space per health:" + string(_space_per_health));
//show_debug_message("xscale: " + string(_xscale));

if(_leftover_width <= 5){
	_health_start = 5;
}
//show_debug_message("health start: " + string(_health_start));
draw_sprite(end_sprite_, 0, _health_start - sprite_get_width(end_sprite_), 0)
draw_sprite_ext(end_sprite_, 0, (_health_start + (sprite_get_width(health_sprite_) * max_health_) + sprite_get_width(end_sprite_)), 0, -1, 1, 0, c_white, 1);
for (var i = 0; i < max_health_; i++){
	var _filled = i < health_;
	if(_health_start == 5){
		draw_sprite_ext(health_sprite_, _filled, _health_start+(_space_per_health*i), 0, _xscale, 1, 0, c_white, 1);
	}else{
		//show_debug_message("drawing at location: " + string(_health_start+(sprite_get_width(spr_stamina_ui)*i)));
		draw_sprite(health_sprite_, _filled, _health_start+(sprite_get_width(health_sprite_)*i),0);
	}
}*/