///@arg section
///@arg name
///@arg array

var _section = argument0;
var _name = argument1;
var _array = argument2;

var _size = array_length_1d(_array);
for(var i = 0; i < _size; i++){
	var _value = _array[i];
	ini_write_string(_section,_name+string(i),_value);
}
