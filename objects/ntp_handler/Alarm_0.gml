if (is_undefined(socket)) exit;

var server = ntp_servers[ntp_server_pointer++ % array_length_1d(ntp_servers)];
show_debug_message("GMNTP: Getting NTP time from " + server);
network_send_udp_raw(socket, server, 123, packet, 48);

if (--tries > 0) {
	alarm[0] = game_get_speed(gamespeed_fps) * timeout;
}