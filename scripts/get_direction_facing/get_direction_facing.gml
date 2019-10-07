///@param direction
var _direction = argument0;
//Set up the direction we are facing
direction_facing_ = round(_direction/90);
if(direction_facing_ == 4){
	direction_facing_ = 0;
}