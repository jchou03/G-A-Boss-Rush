/// @description Draw stuff lmao
if (state != mosquito.fly) {
	draw_sprite(spr_mosquito_fly,0,x - 20,y + 50);
}
draw_self();
draw_self_flash(c_white, 12, alarm[6]);