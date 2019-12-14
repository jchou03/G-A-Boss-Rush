
last_move = "r";

array_1d[0,0] = 0;
array_1d[0,1] = 0;
array_1d[1,0] = 0;
array_1d[1,1] = 0;

array_2d[0,0] = 0;
array_2d[0,1] = 0;
array_2d[1,0] = 0;
array_2d[1,1] = 0;

array_3d[0,0] = 0;
array_3d[0,1] = 0;
array_3d[1,0] = 0;
array_3d[1,1] = 0;

array_2u[0,0] = 0;
array_2u[0,1] = 0;
array_2u[1,0] = 0;
array_2u[1,1] = 0;

array_3u[0,0] = 0;
array_3u[0,1] = 0;
array_3u[1,0] = 0;
array_3u[1,1] = 0;

array_4u[0,0] = 0;
array_4u[0,1] = 0;
array_4u[1,0] = 0;
array_4u[1,1] = 0;

done_1d = 0;
done_2d = 0;
done_3d = 0;
done_2u = 0;
done_3u = 0;
done_4u = 0;

i = 0;
j = 0;
moved_this_loop = 0;

attack_x = irandom_range(0, 13);
attack_y = irandom_range(0,2);

tile_oil_chance = 70;

repetitions = 0;

do {
	if (j == 3){
		i += 1;
		j = 0;
	}
	else {
		j += 1;
	}
}
until (global.ground[i,j] == 1 || i == 14);

if (i > attack_x){
	base_i = attack_x;
}
else base_i = i;

i = base_i;
show_debug_message(i);

j = 0;

//1d

if (global.ground[i,0] = 0){
	
	//1d
	
	array_1d = available_tiles(i,j,attack_x,attack_y, array_1d);
	
	while (i < 14 && j >= 0){
		
		moved_this_loop = 0;
		
		if (global.ground[i+1,j] == 0 && !(last_move == "l")){
				i += 1;
				last_move = "r"
				moved_this_loop = 1;
				array_1d = available_tiles(i,j,attack_x,attack_y, array_1d);
		}
	
		if (j < 3 && moved_this_loop == 0) {	
			if (global.ground[i,j+1] == 0){
				if (last_move == "u"){
					if (j == 0){
						j += 1;
						last_move = "d";
						moved_this_loop = 1;
						array_1d = available_tiles(i,j,attack_x,attack_y, array_1d);
					}
					if (i < 0 && j > 0){
						if (global.ground[i,j-1] = 1 && global.ground[i+1,j] = 1 && global.ground[i-1,j] = 1){
							j += 1;
							last_move = "d";
							moved_this_loop = 1;
							array_1d = available_tiles(i,j,attack_x,attack_y, array_1d);
						}
					}
				}
				else {
					j += 1;
					last_move = "d";
					array_1d = available_tiles(i,j,attack_x,attack_y, array_1d);
					moved_this_loop = 1;
				}
			}
		}
	
		if (j > 0 && moved_this_loop == 0){
			if (global.ground[i,j-1] == 0){
				if (last_move == "d"){
					if (j == 3){
						j -= 1;
						last_move = "u";
						moved_this_loop = 1;
						array_1d = available_tiles(i,j,attack_x,attack_y, array_1d);
					}
					if (i < 0 && j < 3){
						if (global.ground[i,j+1] = 1 && global.ground[i+1,j] = 1 && global.ground[i-1,j] = 1){
							j -= 1;
							last_move = "u";
							moved_this_loop = 1;
							array_1d = available_tiles(i,j,attack_x,attack_y, array_1d);
						}
					}
				}
				else {
					j -= 1;
					last_move = "u";
					moved_this_loop = 1;
					array_1d = available_tiles(i,j,attack_x,attack_y, array_1d);
				}
			}
		}
		if (i > 0 && moved_this_loop == 0){
			if (global.ground[i-1,j] == 0){
				i -= 1;
				last_move = "l";
				moved_this_loop = 1;
				array_1d = available_tiles(i,j,attack_x,attack_y, array_1d);
			}
		}
		if (!(i == 14)){
			if (i == 0 || global.ground[i-1,j == 1]){
				if (global.ground[i+1,j] == 1 || last_move == "l"){
					if (j == 0 || global.ground[i,j-1] == 1){
						if(j == 3 || global.ground[i,j+1] == 1){
							done_1d = -1;
							break;
						}
					}
				}
			}
		}
		show_debug_message(last_move);
		repetitions += 1;
		if (repetitions > 40) break;
	}
	show_debug_message("1d complete");
	done_1d += 1;
}
else show_debug_message("1d skipped");
//2d & 2u

j = 1;
i = base_i;

if (global.ground[i,1] = 0){
	
	//2d
	array_2d = available_tiles(i,j,attack_x,attack_y, array_2d);
	
	repetitions = 0;
	
	while (i < 14 && j >= 0){
		
		moved_this_loop = 0;
		
		if (global.ground[i+1,j] == 0){
			if (!(last_move == "l")){
				i += 1;
				last_move = "r"
				moved_this_loop = 1;
				array_2d = available_tiles(i,j,attack_x,attack_y, array_2d);
			}
		}
	
		if (j + 1 < 4 && moved_this_loop == 0) {	
			if (global.ground[i,j+1] == 0){
				if (last_move == "u"){
					if (j == 0){
						j += 1;
						last_move = "d";
						moved_this_loop = 1;
						array_2d = available_tiles(i,j,attack_x,attack_y, array_2d);
					}
					if (i < 0 && j > 0){
						if (global.ground[i,j-1] = 1 && global.ground[i+1,j] = 1 && global.ground[i-1,j] = 1){
							j += 1;
							last_move = "d";
							moved_this_loop = 1;
							array_2d = available_tiles(i,j,attack_x,attack_y, array_2d);
						}
					}
				}
				else {
					j += 1;
					last_move = "d";
					moved_this_loop = 1;
					array_2d = available_tiles(i,j,attack_x,attack_y, array_2d);
				}
			}
		}
	
		if (j > 0 && moved_this_loop == 0){
			if (global.ground[i,j-1] == 0){
				if (last_move == "d"){
					if (j == 3){
						j -= 1;
						last_move = "u";
						moved_this_loop = 1;
						array_2d = available_tiles(i,j,attack_x,attack_y, array_2d);
					}
					if (i < 0 && j < 3){
						if (global.ground[i,j+1] = 1 && global.ground[i+1,j] = 1 && global.ground[i-1,j] = 1){
							j -= 1;
							last_move = "u";
							moved_this_loop = 1;
							array_2d = available_tiles(i,j,attack_x,attack_y, array_2d);
						}
					}
				}
				else {
					j -= 1;
					last_move = "u";
					moved_this_loop = 1;
					array_2d = available_tiles(i,j,attack_x,attack_y, array_2d);
				}
			}
		}
		if (i > 0 && moved_this_loop == 0){
			if (global.ground[i-1,j] == 0){
				i -= 1;
				last_move = "l";
				moved_this_loop = 1;
				array_2d = available_tiles(i,j,attack_x,attack_y, array_2d);
			}
		}	
		if (!(i == 14)){
			if (i == 0 || global.ground[i-1,j == 1]){
				if (global.ground[i+1,j] == 1 || last_move == "l"){
					if (j == 0 || global.ground[i,j-1] == 1){
						if(j == 3 || global.ground[i,j+1] == 1){
							done_2d = -1;
							break;
						}
					}
				}
			}
		}
		show_debug_message(last_move);
		repetitions += 1;
		if (repetitions > 40) break;
	}
	show_debug_message("2d complete");
	done_2d += 1;
	//2u
	
	
	j = 1;
	i = base_i;
	
	array_2u = available_tiles(i,j,attack_x,attack_y, array_2u);
	
	repetitions = 0;
	
	while (i < 14 && j >= 0){
		
		moved_this_loop = 0;
		
		if (global.ground[i+1,j] == 0){
			if (!(last_move == "l")){
				i += 1;
				last_move = "r"
				moved_this_loop = 1;
				array_2u = available_tiles(i,j,attack_x,attack_y, array_2u);
			}
		}
	
		if (j > 0 && moved_this_loop == 0){
			if (global.ground[i,j-1] == 0){
				if (last_move == "d"){
					if (j == 3){
						j -= 1;
						last_move = "u";
						moved_this_loop = 1;
						array_2u = available_tiles(i,j,attack_x,attack_y, array_2u);
					}
					if (i < 0 && j < 3){
						if (global.ground[i,j+1] = 1 && global.ground[i+1,j] = 1 && global.ground[i-1,j] = 1){
							j -= 1;
							last_move = "u";
							moved_this_loop = 1;
							array_2u = available_tiles(i,j,attack_x,attack_y, array_2u);
						}
					}
				}
				else {
					j -= 1;
					last_move = "u";
					moved_this_loop = 1;
					array_2u = available_tiles(i,j,attack_x,attack_y, array_2u);
				}
			}
		}
		
		if (j < 3 && moved_this_loop == 0) {	
			if (global.ground[i,j+1] == 0){
				if (last_move == "u"){
					if (j == 0){
						j += 1;
						last_move = "d";
						moved_this_loop = 1;
						array_2u = available_tiles(i,j,attack_x,attack_y, array_2u);
					}
					if (i < 0 && j > 0){
						if (global.ground[i,j-1] = 1 && global.ground[i+1,j] = 1 && global.ground[i-1,j] = 1){
							j += 1;
							last_move = "d";
							moved_this_loop = 1;
							array_2u = available_tiles(i,j,attack_x,attack_y, array_2u);
						}
					}
				}
				else {
					j += 1;
					last_move = "d";
					moved_this_loop = 1;
					array_2u = available_tiles(i,j,attack_x,attack_y, array_2u);
				}
			}
		}
		
		if (i > 0 && moved_this_loop == 0){
			if (global.ground[i-1,j] == 0){
				i -= 1;
				last_move = "l";
				moved_this_loop = 1;
				array_2u = available_tiles(i,j,attack_x,attack_y, array_2u);
			}
		}
		if (!(i == 14)){
			if (i == 0 || global.ground[i-1,j == 1]){
				if (global.ground[i+1,j] == 1 || last_move == "l"){
					if (j == 0 || global.ground[i,j-1] == 1){
						if(j == 3 || global.ground[i,j+1] == 1){
							done_2u = -1;
							break;
						}
					}
				}
			}
		}
		show_debug_message(last_move);
		repetitions += 1;
		if (repetitions > 40) break;
	}
	show_debug_message("2u complete");
	done_2u += 1;
}
else show_debug_message("2d and 2u skipped");

//3d and 3u

i = base_i;
j = 2;
	
if (global.ground[i,2] = 0){
	
	
	//3d

	array_3d = available_tiles(i,j,attack_x,attack_y, array_3d);
	
	repetitions = 0;

	while (i < 14 && j >= 0){
		
		moved_this_loop = 0
		
		if (global.ground[i+1,j] == 0){
			if (!(last_move == "l")){
				i += 1;
				last_move = "r"
				moved_this_loop = 1;
				array_3d = available_tiles(i,j,attack_x,attack_y, array_3d);
			}
		}
	
		if (j < 3 && moved_this_loop == 0) {	
			if (global.ground[i,j+1] == 0){
				if (last_move == "u"){
					if (j == 0){
						j += 1;
						last_move = "d";
						moved_this_loop = 1;
						array_3d = available_tiles(i,j,attack_x,attack_y, array_3d);
					}
					if (i < 0 && j > 0){
						if (global.ground[i,j-1] = 1 && global.ground[i+1,j] = 1 && global.ground[i-1,j] = 1){
							j += 1;
							last_move = "d";
							moved_this_loop = 1;
							array_3d = available_tiles(i,j,attack_x,attack_y, array_3d);
						}
					}
				}
				else {
					j += 1;
					last_move = "d";
					moved_this_loop = 1;
					array_3d = available_tiles(i,j,attack_x,attack_y, array_3d);
				}
			}
		}
	
		if (j > 0 && moved_this_loop == 0){
			if (global.ground[i,j-1] == 0){
				if (last_move == "d"){
					if (j == 3){
						j -= 1;
						last_move = "u";
						moved_this_loop = 1;
						array_3d = available_tiles(i,j,attack_x,attack_y, array_3d);
					}
					if (i < 0 && j < 3){
						if (global.ground[i,j+1] = 1 && global.ground[i+1,j] = 1 && global.ground[i-1,j] = 1){
							j -= 1;
							last_move = "u";
							moved_this_loop = 1;
							array_3d = available_tiles(i,j,attack_x,attack_y, array_3d);
						}
					}
				}
				else {
					j -= 1;
					last_move = "u";
					moved_this_loop = 1;
					array_3d = available_tiles(i,j,attack_x,attack_y, array_3d);
				}
			}
		}
		if (i > 0 && moved_this_loop == 0){
			if (global.ground[i-1,j] == 0){
				i -= 1;
				last_move = "l";
				moved_this_loop = 1;
				array_3d = available_tiles(i,j,attack_x,attack_y, array_3d);
			}
		}
		if (!(i == 14)){
			if (i == 0 || global.ground[i-1,j == 1]){
				if (global.ground[i+1,j] == 1 || last_move == "l"){
					if (j == 0 || global.ground[i,j-1] == 1){
						if(j == 3 || global.ground[i,j+1] == 1){
							done_3d = -1;
							break;
						}
					}
				}
			}
		}
		show_debug_message(last_move);
		repetitions += 1;
		if (repetitions > 40) break;
	}
	show_debug_message("3d complete");
	done_3d += 1;
	//3u
	
	i = base_i;
	j = 2;
	
	array_3u = available_tiles(i,j,attack_x,attack_y, array_3u);
	
	repetitions = 0;
	
	while (i < 14 && j >= 0){
		
		moved_this_loop = 0;
		
		if (global.ground[i+1,j] == 0){
			if (!(last_move == "l")){
				i += 1;
				last_move = "r"
				moved_this_loop = 1;
				array_3u = available_tiles(i,j,attack_x,attack_y, array_3u);
			}
		}
	
		if (j > 0 && moved_this_loop == 0){
			if (global.ground[i,j-1] == 0){
				if (last_move == "d"){
					if (j == 3){
						j -= 1;
						last_move = "u";
						moved_this_loop = 1;
						array_3u = available_tiles(i,j,attack_x,attack_y, array_3u);
					}
					if (i < 0 && j < 3){
						if (global.ground[i,j+1] = 1 && global.ground[i+1,j] = 1 && global.ground[i-1,j] = 1){
								j -= 1;
							last_move = "u";
							moved_this_loop = 1;
							array_3u = available_tiles(i,j,attack_x,attack_y, array_3u);
						}
					}
				}
				else {
					j -= 1;
					last_move = "u";
					moved_this_loop = 1;
					array_3u = available_tiles(i,j,attack_x,attack_y, array_3u);
				}
			}
		}
		
		if (j < 3 && moved_this_loop == 0) {	
			if (global.ground[i,j+1] == 0){
				if (last_move == "u"){
					if (j == 0){
						j += 1;
						last_move = "d";
						moved_this_loop = 1;
						array_3u = available_tiles(i,j,attack_x,attack_y, array_3u);
					}
					if (i < 0 && j > 0){
						if (global.ground[i,j-1] = 1 && global.ground[i+1,j] = 1 && global.ground[i-1,j] = 1){
							j += 1;
							last_move = "d";
							moved_this_loop = 1;
							array_3u = available_tiles(i,j,attack_x,attack_y, array_3u);
						}
					}
				}
				else {
					j += 1;
					last_move = "d";
					moved_this_loop = 1;
					array_3u = available_tiles(i,j,attack_x,attack_y, array_3u);
				}
			}
		}
		
		if (i > 0 && moved_this_loop == 0){
			if (global.ground[i-1,j] == 0){
				i -= 1;
				last_move = "l";
				moved_this_loop = 1;
				array_3u = available_tiles(i,j,attack_x,attack_y, array_3u);
			}
		}
		if (!(i == 14)){
			if (i == 0 || global.ground[i-1,j == 1]){
				if (global.ground[i+1,j] == 1 || last_move == "l"){
					if (j == 0 || global.ground[i,j-1] == 1){
						if(j == 3 || global.ground[i,j+1] == 1){
							done_3u = -1;
							break;
						}
					}
				}
			}
		}
		show_debug_message(last_move);
		repetitions += 1;
		if (repetitions > 40) break;
	}
	show_debug_message("3u complete");
	done_3u += 1;
}
else show_debug_message("3d and 3u skipped");

//4u	

i = base_i;
j = 3;

if (global.ground[i,3] = 0){
	
	array_4u = available_tiles(i,j,attack_x,attack_y, array_4u);
	
	repetitions = 0;
	
	while (i < 14 && j >= 0){
		
		moved_this_loop = 0;
		
		if (global.ground[i+1,j] == 0){
			if (!(last_move == "l")){
				i += 1;
				last_move = "r"
				moved_this_loop = 1;
				array_4u = available_tiles(i,j,attack_x,attack_y, array_4u);
			}
		}
	
		if (j > 0 && moved_this_loop == 0){
			if (global.ground[i,j-1] == 0){
				if (last_move == "d"){
					if (j == 3){
						j -= 1;
						last_move = "u";
						moved_this_loop = 1;
						array_4u = available_tiles(i,j,attack_x,attack_y, array_4u);
					}
					if (i < 0 && j < 3){
						if (global.ground[i,j+1] = 1 && global.ground[i+1,j] = 1 && global.ground[i-1,j] = 1){
							j -= 1;
							last_move = "u";
							moved_this_loop = 1;
							array_4u = available_tiles(i,j,attack_x,attack_y, array_4u);
						}
					}
				}
				else {
					j -= 1;
					last_move = "u";
					moved_this_loop = 1;
					array_4u = available_tiles(i,j,attack_x,attack_y, array_4u);
				}
			}
		}
		
		if (j < 3 && moved_this_loop == 0) {	
			if (global.ground[i,j+1] == 0){
				if (last_move == "u"){
					if (j == 0){
						j += 1;
						last_move = "d";
						moved_this_loop = 1;
						array_4u = available_tiles(i,j,attack_x,attack_y, array_4u);
					}
					if (i < 0 && j > 0){
						if (global.ground[i,j-1] = 1 && global.ground[i+1,j] = 1 && global.ground[i-1,j] = 1){
							j += 1;
							last_move = "d";
							moved_this_loop = 1;
							array_4u = available_tiles(i,j,attack_x,attack_y, array_4u);
						}
					}
				}
				else {
					j += 1;
					last_move = "d";
					moved_this_loop = 1;
					array_4u = available_tiles(i,j,attack_x,attack_y, array_4u);
				}
			}
		}
		
		if (i > 0 && moved_this_loop == 0){
			if (global.ground[i-1,j] == 0){
				i -= 1;
				last_move = "l";
				moved_this_loop = 1;
				array_4u = available_tiles(i,j,attack_x,attack_y, array_4u);
			}
		}	
		if (!(i == 14)){
			if (i == 0 || global.ground[i-1,j == 1]){
				if (global.ground[i+1,j] == 1 || last_move == "l"){
					if (j == 0 || global.ground[i,j-1] == 1){
						if(j == 3 || global.ground[i,j+1] == 1){
							done_4u = -1;
							break;
						}
					}
				}
			}
		}
		show_debug_message(last_move);
		repetitions += 1;
		if (repetitions > 40) break;
	}
	show_debug_message("4u complete");
	done_4u += 1;
}
else show_debug_message("4u skipped");
attack_array = min_array(array_1d,array_2d,array_3d,array_2u,array_3u,array_4u,done_1d,done_2d,done_3d,done_2u,done_3u,done_4u);

show_debug_message(array_1d);
show_debug_message(array_2d);
show_debug_message(array_3d);
show_debug_message(array_2u);
show_debug_message(array_3u);
show_debug_message(array_4u);
show_debug_message(attack_array);

true_column1_x = 18 * attack_x + 67;
true_column2_x = 18 * attack_x + 85 ;
true_row1_y = 18 * attack_y + 153;
true_row2_y = 18 * attack_y + 171;



if (attack_array[0,0] = 0 && irandom_range(0,100) <= tile_oil_chance){
	//instance_create_depth(true_column1_x,true_row1_y,-6000,obj_drop);
	instance_create_layer(true_column1_x,true_row1_y,"Instances",obj_drop); 
	instance_create_layer(true_column1_x,true_row1_y,"Instances",obj_oil);
	global.ground[attack_x,attack_y] = 1;
}
if (attack_array[1,0] = 0 && irandom_range(0,100) <= tile_oil_chance){
	//instance_create_depth(true_column2_x,true_row1_y,-6000,obj_drop);
	instance_create_layer(true_column2_x,true_row1_y,"Instances",obj_drop); 
	instance_create_layer(true_column2_x,true_row1_y,"Instances",obj_oil);
	global.ground[attack_x + 1,attack_y] = 1;
}
if (attack_array[0,1] = 0 && irandom_range(0,100) <= tile_oil_chance){
	//instance_create_depth(true_column1_x,true_row2_y,-6000,obj_drop);
	instance_create_layer(true_column1_x,true_row2_y,"Instances",obj_drop); 
	instance_create_layer(true_column1_x,true_row2_y,"Instances",obj_oil);
	global.ground[attack_x,attack_y + 1] = 1;
}
if (attack_array[1,1] = 0 && irandom_range(0,100) <= tile_oil_chance){
	//instance_create_depth(true_column2_x,true_row2_y,-6000,obj_drop);
	instance_create_layer(true_column2_x,true_row2_y,"Instances",obj_drop); 
	instance_create_layer(true_column2_x,true_row2_y,"Instances",obj_oil); 
	global.ground[attack_x + 1,attack_y + 1] = 1;
}
