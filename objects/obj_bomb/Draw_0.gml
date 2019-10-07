/// @description hitflash stuff

var _interval = ceil(alarm[0]/global.one_second)*8;

draw_sprite(spr_medium_shadow,0,x,y);
draw_self();
draw_self_flash(c_red,_interval,alarm[0]);
