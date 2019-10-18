/// @description Insert description here
/// @description oof

speed = 0;
if (sprite_index != spr_small_mosquito_die2) {
	create_hitbox(spr_small_mosquito_die,x,y,0,10,[obj_player],1,1);
} else {
	create_hitbox(spr_small_mosquito_die2,x,y,0,10,[obj_player],1,1);
}