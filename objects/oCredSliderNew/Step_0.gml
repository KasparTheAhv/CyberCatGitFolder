/// @desc
kaugus+=kiirus;
kaugus=clamp(kaugus,-maxkaugus,0);
kiirus=clamp(kiirus,-15,15);


if (mouse_x<room_width*0.1)
{
	if mouse_check_button_pressed(mb_left) {
		if (point_distance(sliderX,sliderCur,mouse_x,mouse_y)<20)
		{
			picked=true;	
		}
	}
	if mouse_check_button(mb_left) {
		// down
		if (picked)
		{
		sliderCur=mouse_y;
		sliderCur=clamp(sliderCur,lineYmin,lineYmax);	
		var miskomandik = (sliderCur/room_height)-0.25;
		kaugus=-1*(miskomandik*(maxkaugus*2));    // 0 - 30 000
		
		oCredController.sliding=false;oCredController.slideind=1;
		
		}
	}
	if mouse_check_button_released(mb_left) {
		// release
		picked=false;
	}

} else {
howmuch=(kaugus/maxkaugus)*-1;
sliderCur=lerp(room_height*0.25,room_height*0.75,howmuch);
sliderCur=clamp(sliderCur,lineYmin,lineYmax);	
}