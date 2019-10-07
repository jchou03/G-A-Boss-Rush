var _explosion = create_animation_effect(spr_explosion_effect,x,y,1,true);

create_hitbox(spr_bomb_hitbox,x,y-4,0,3,[obj_grass,obj_enemy,obj_player],2,12);
audio_play_sound(a_explosion,7,false);
