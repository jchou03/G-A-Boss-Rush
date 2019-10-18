/// @description Insert description here

// variables for centering and scaling health bar
var _leftover_width = (camera_get_view_width(view_camera[0]) - (sprite_get_width(spr_stamina_ui)*max_health_));

//show_debug_message("camera width: " + string(camera_get_view_width(view_camera[0])));
//show_debug_message("sprite width: " + string(sprite_get_width(spr_stamina_ui)*max_health_));
//show_debug_message("leftover width" + string(_leftover_width));

var _health_start = _leftover_width/4;
// calculate what the image_xscale for each of the health sprites need to be in order to fit onto the screen
// sp	ace left for one health bar to fit into
var _leftover_space = (camera_get_view_width(view_camera[0])-10)/max_health_;
var _xscale = _leftover_space/sprite_get_width(spr_stamina_ui);

show_debug_message("leftover space:" + string(_leftover_space));
show_debug_message("xscale: " + string(_xscale));

if(_leftover_width <= 5){
	_health_start = 5;
}
show_debug_message("health start: " + string(_health_start));

for (var i = 0; i < max_health_; i++){
	var _filled = i < health_;
	if(_health_start == 5){
		draw_sprite_ext(spr_stamina_ui, _filled, _health_start+(_leftover_space*i), 0,_xscale,1,0,c_white,1);
	}else{
		show_debug_message("drawing at location: " + string(_health_start+(sprite_get_width(spr_stamina_ui)*i)));
		draw_sprite(spr_stamina_ui, _filled, _health_start+(sprite_get_width(spr_stamina_ui)*i),0);
	}
}