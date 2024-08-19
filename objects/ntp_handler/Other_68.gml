if (async_load[? "id"] == socket and async_load[? "type"] == network_type_data) {
	var buff = async_load[? "buffer"];

	// read seconds
	var seconds = (buffer_peek(buff, 40, buffer_u8) << 24) | (buffer_peek(buff, 41, buffer_u8) << 16) | (buffer_peek(buff, 42, buffer_u8) << 8) | (buffer_peek(buff, 43, buffer_u8));

	// only read 2 bytes of fraction because this is enough accuracy
	var fraction = (buffer_peek(buff, 44, buffer_u8) << 8) | (buffer_peek(buff, 45, buffer_u8));

	// convert to GM timestamp
	var ntpclock = (seconds + fraction/65536)/86400 + 2;
	global.timeNTP=ntpclock;
	// get system clock
	var zone = date_get_timezone();
	date_set_timezone(timezone_utc);
	var sysclock = date_current_datetime();
	date_set_timezone(zone); // restore game's default timezone

	global.timestamp_offset = ntpclock - sysclock;


	var convertedDate= DateConversion(ntpclock);
	show_debug_message("GMNTP: System clock: " + date_datetime_string(sysclock) + " NTP clock: " + string(convertedDate) + " Difference: " + string((ntpclock - sysclock)*86400) + " seconds");
	oPlayControllerA.dater=convertedDate;
	
	
	
	var settingsmap = ds_map_secure_load("settings.sav");
	prevDate = ds_map_find_value(settingsmap,"prevDate");
	
	// allow daily reward sys
	if (prevDate!=convertedDate)
	{
		ds_map_set(settingsmap,"canDaily",1);
		ds_map_set(settingsmap,"prevDate",convertedDate);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	


	
	network_destroy(socket);
	socket = undefined;
	show_debug_message("destroying NTP handler!");
	instance_destroy(self);
}