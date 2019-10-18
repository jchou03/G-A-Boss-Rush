/// @description Insert description here

if (global.which_spike == 1) {
	direction = point_direction(x,y,x,y-1);
} else if (global.which_spike == 2) {
	direction = point_direction(x,y,x+1,y-1);
} else if (global.which_spike == 3) {
	direction = point_direction(x,y,x+1,y);
} else if (global.which_spike == 4) {
	direction = point_direction(x,y,x+1,y+1);
} else if (global.which_spike == 5) {
	direction = point_direction(x,y,x,y+1);
} else if (global.which_spike == 6) {
	direction = point_direction(x,y,x-1,y+1);
} else if (global.which_spike == 7) {
	direction = point_direction(x,y,x-1,y);
} else {
	direction = point_direction(x,y,x-1,y-1);
}

speed = 4;
image_angle = direction;