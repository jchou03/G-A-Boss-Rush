/// @description setup; variable definitions and such
event_inherited();
image_speed = 1;//animation speed

health = 1;//current health
state = mosquito2.move;//which of the states it's in

acting = false;//if it is mid-action
attacking = false;
attackDist1 = 50;//distance from which it will attack

lifetime = 360;
alarm[2] = lifetime;//at the end, it destroys self

enum mosquito2{
	//movement
	move,//moving towards the player

	//attacks
	bite,//bites the player
	
	//oof
	dead//when it dies
}