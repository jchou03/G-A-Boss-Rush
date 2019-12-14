def_array[0,0] = 1;
def_array[0,1] = 1;
def_array[1,0] = 1;
def_array[1,1] = 1;

done_1d = argument6;
done_2d = argument7;
done_3d = argument8;
done_2u = argument9;
done_3u = argument10;
done_4u = argument11;

if (done_1d == 1) array_1d = argument0 else array_1d = def_array;
if (done_2d == 1) array_2d = argument1 else array_2d = def_array;
if (done_3d == 1) array_3d = argument2 else array_3d = def_array;
if (done_2u == 1) array_2u = argument3 else array_2u = def_array;
if (done_3u == 1) array_3u = argument4 else array_3u = def_array;
if (done_4u == 1) array_4u = argument5 else array_4u = def_array;

array_min = min(array_total(array_1d),array_total(array_2d),array_total(array_3d),array_total(array_2u),array_total(array_3u),array_total(array_4u))

if (array_total(array_2d) = array_min && done_2d == 1){
	return array_2d;
}
if (array_total(array_3d) = array_min && done_3d == 1){
	return array_3d;
}
if (array_total(array_2u) = array_min && done_2u == 1){
	return array_2u;
}
if (array_total(array_3u) = array_min && done_3u == 1){
	return array_3u;
}
if (array_total(array_4u) = array_min && done_4u == 1){
	return array_4u;
}

if (array_total(array_1d) = array_min && done_1d == 1){
	return array_1d;
}
return def_array;