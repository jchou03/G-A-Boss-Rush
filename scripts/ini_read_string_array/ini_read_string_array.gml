///@arg section
///@arg name
///@arg default

var _section = argument0;
var _name = argument1;
var _default = argument2;

var _array = [];
var i = 0;
while(ini_key_exists(_section,_name+string(i))){
	var _value = ini_read_string(_section,_name+string(i),"");
	// adds to i as well as accessing index i in _array at the same time
	_array[i++] = _value;
}

if(array_length_1d(_array)){
	return _array;
}else{
	return _default;
}
	