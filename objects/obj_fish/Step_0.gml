/// @description Insert description here
// You can write your code in this editor
global.which_spike = 1;

if(cooldown < 1){
	attack = irandom_range(1, 3)
	
	if (attack == 1) {
		for (var i = 1; i < 9; i++) {
			instance_create_layer(x,y,layer,obj_spike_burst);
			global.which_spike += 1;
		}
	} else if (attack == 2) {
		instance_create_layer(x,y,layer,obj_wind_slash);
	} else if (attack == 3) {
		instance_create_layer(x,y,layer,obj_hurricane);
	}
	
	
	
	cooldown = 240;
}

cooldown -= 1;