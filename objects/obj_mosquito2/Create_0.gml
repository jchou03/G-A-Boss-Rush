/// @description setup; variable definitions and such
event_inherited();
image_speed = 1;

health = 1;//current health
state = mosquito2.move;//which of the states it's in

acting = false;//if it is mid-action
attackDist1 = 50;

lifetime = 256;
alarm[2] = lifetime;

enum mosquito2{
	//movement
	move,//moving towards the player

	//attacks
	bite,//bites the player
	
	//oof
	hurt//when it's hurt by the player
}