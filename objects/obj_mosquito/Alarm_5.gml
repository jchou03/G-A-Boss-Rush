/// @description swarm alarm

var deviation = 50;
repeat (5) {
	instance_create_layer(x + irandom_range(-deviation, deviation),y + irandom_range(-deviation, deviation),"Instances",obj_mosquito2);
}
state = mosquito.idle;
event_user(state);