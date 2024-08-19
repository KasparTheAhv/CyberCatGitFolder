if (os_type==os_windows) {exit;}
if (os_type==os_operagx) {exit;}
if (not is_undefined(socket)) {
	network_destroy(socket);	
}