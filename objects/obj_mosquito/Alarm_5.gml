/// @description swarm delay

var deviation = 25;
repeat (3) {
	instance_create_layer(x + irandom_range(-deviation, deviation),y + irandom_range(-deviation, deviation),"Instances",obj_mosquito2);
}