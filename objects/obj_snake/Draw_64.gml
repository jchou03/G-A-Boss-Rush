draw_text(5,5,state_);
draw_text(5,15,"Health: " + string(health_));
draw_text(5,25,"0 if should burrow: " + string(health_%4));
draw_text(200,5,"Frame rate: " + string(game_get_speed(fps_real)));