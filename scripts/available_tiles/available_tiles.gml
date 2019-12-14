
i = argument0;
j = argument1;

temp_array = argument4;

attack_x = argument2;
attack_y = argument3;


if (i == attack_x && j == attack_y){
	temp_array[0,0] = 1;
}
if (i == attack_x + 1 && j == attack_y){
	temp_array[1,0] = 1;
}
if (i == attack_x && j == attack_y + 1){
	temp_array[0,1] = 1;
}
if (i == attack_x + 1 && j == attack_y + 1){
	temp_array[1,1] = 1;
}

return temp_array;