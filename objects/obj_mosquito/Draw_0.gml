/// @description Draw the boi
if (state != mosquito.fly) {
	draw_sprite(spr_mosquito_fly,0,x,y + 50);
}
draw_self();
draw_self_flash(c_white, 12, alarm[6]);