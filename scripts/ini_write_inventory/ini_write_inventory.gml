///@arg section
///@arg name
///@arg inventory_array

var _section = argument0;
var _name = argument1;
var _inventory_array = argument2;

var _inventory_size = array_length_1d(_inventory_array);

for (var i = 0; i < _inventory_size; i++){
	var _value = _inventory_array[i];
	if instance_exists(_value){
		ini_write_string(_section,_name+string(i),object_get_name(_value.object_index));
	}else{
		ini_write_string(_section,_name+string(i),string(_value));
	}
}
