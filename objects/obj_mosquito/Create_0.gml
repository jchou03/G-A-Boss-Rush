/// @description setup; variable definitions and such
//things to add:
/*
set up sounds
*/
event_inherited();
image_speed = 1;

maxHealth = 25;//maximum health
health_ = maxHealth;//current health
invincible_ = false;
state = mosquito.idle;//which of the states it's in

acting = false;//if it is mid-action
attacking = false;//if it is mid-attack
lastAct = mosquito.idle;//the last action taken

attackDist = 100;//maximum distance it will attack from
attackDist2 = 50;//distance from which it can use short range attacks
knockback = 5;//how far it knocks the player back on hit

facing = 0;//which direction it is facing
//0 is up, 1 is right, 2 is down, 3 is left

enum mosquito{
	//movement
	idle,//lands and rests
	move,//moving towards the player
	fly,//flys up then lands somewhere else
	
	//attacks
	bite,//bites the player, infecting them with the plague
	slam,//slams into the player, dealing damage
	swarm,//sends out a swarm of smaller mosquitos
	
	//oof
	hurt//when it's hurt by the player
}