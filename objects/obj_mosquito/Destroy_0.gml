/// @description 
create_animation_effect(spr_death_effect,x,y,.6,true);
instance_create_layer(x,y-8,"Instances",obj_gem);
show_debug_message("You win lol");
finish_fight(x, y, r_post_bug);