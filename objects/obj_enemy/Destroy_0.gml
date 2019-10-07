/// @description 
create_animation_effect(spr_death_effect,x,y-8,.6,true);

var _item = choose(obj_gem,obj_heart)
if chance(.75){
	instance_create_layer(x,y-8,"Instances",_item);
}
