///@arg value
///@arg array

var _value = argument0;
var _array = argument1;
var _array_size = array_length_1d(_array);

//search for value
for(var i = 0; i < _array_size;i++){
	if _array[i] == _value return i;
}

//if not found, return -1
return -1;