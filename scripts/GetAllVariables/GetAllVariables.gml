/// @desc GetAllVariables(obj_id)
/// @arg0 objectid
function GetAllVariables(object_id){

	// Get a list of all variable names for the current instance
	var variable_list = variable_instance_get_names(argument[0]);
	
	// Initialize an empty string for debugging
	var debug_info = "";
	var whatName = object_get_name(argument[0].object_index);
	show_debug_message(" \n\n\n --------------------- Object: "+string(whatName)+"\n");
	// Loop through all variables and append their names and values to the string
	for (var i = 0; i < array_length(variable_list); i++) {
	    var var_name = variable_list[i];
	    var var_value = variable_instance_get(argument[0], var_name);
	    
	    // Append variable name and value to the debug info string
	    debug_info +="   "+ var_name + ":   " + string(var_value) + ", \n";
	}
	
	// Output the entire string to the debug console
	show_debug_message(debug_info);
}
