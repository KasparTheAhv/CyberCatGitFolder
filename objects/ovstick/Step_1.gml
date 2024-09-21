/// @desc funktsionaalsus
if (os_type!=os_android) {exit;}

if (toimi)
{
	vstick_step(stick_id);
	lel=vstick_get_yaxis(1);
}
// mis pilt
if vstick_check(1)
{
	if (lel>=0.5) {cursprite=3;if (cursprite!=prevsprite){prevsprite=cursprite; vstick_set_frontsprite(1,JSdown);}  } 
	if (lel<0.5)&&(lel>-0.68){cursprite=1; if (cursprite!=prevsprite){prevsprite=cursprite; vstick_set_frontsprite(1,JSnorm);} 	}	
	if (lel<-0.68) {cursprite=2;if (cursprite!=prevsprite){prevsprite=cursprite; vstick_set_frontsprite(1,JSup);}  } 	
} else {
	if (lel<0.5)&&(lel>-0.68){cursprite=1; if (cursprite!=prevsprite){prevsprite=cursprite; vstick_set_frontsprite(1,JSnorm);} 	}	
}

