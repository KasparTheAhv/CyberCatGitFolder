if (os_type==os_windows) {instance_destroy();}
if (os_type==os_operagx) {instance_destroy();}

socket = network_create_socket(network_socket_udp);
packet = buffer_create(48, buffer_fixed, 1);
buffer_write(packet, buffer_u8, 0xe3) // no leap, NTP version 4, client
buffer_write(packet, buffer_u8, 0x10) // stratum 16: client
// These are all zero
//buffer_write(packet, buffer_u8, 0x00) // max poll
//buffer_write(packet, buffer_u8, 0x00) // precision 1s
//buffer_write(packet, buffer_u32, 0) // root delay
//buffer_write(packet, buffer_u32, 0) // root dispersion
//buffer_write(packet, buffer_u32, 0) // reference clock identifier
//buffer_write(packet, buffer_u64, 0) // reference timestamp
//buffer_write(packet, buffer_u64, 0) // originate timestamp
//buffer_write(packet, buffer_u64, 0) // receive timestamp
//buffer_write(packet, buffer_u64, 0) // transmit timestamp

// array of NTP servers to use
ntp_servers = [
	"0.pool.ntp.org",
	"1.pool.ntp.org",
	"2.pool.ntp.org",
	"3.pool.ntp.org"
];
ntp_server_pointer = 0;

global.timestamp_offset = undefined;	// this is the offset

tries = 20;				// retry 10 times
timeout = 0.5;			// wait time for request before retrying

event_perform(ev_alarm, 0); // run request now