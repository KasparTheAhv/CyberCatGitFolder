/// @desc joonistamine

if (os_type!=os_android) {exit;}
if (joonista) {
	draw_set_alpha(global.AL);
	vstick_draw(stick_id);
	draw_set_alpha(1);
	}