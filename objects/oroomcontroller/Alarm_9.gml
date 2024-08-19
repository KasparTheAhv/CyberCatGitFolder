/// @desc Buttefly maker
alarm[9]=irandom_range(700,1200);


with(oFlower) {
	var chancer=irandom_range(0,100);
	if (chancer<7)
	{
			var tmpgoRight=choose(true,false); 
			var vx = camera_get_view_x(view_camera[0]);
			var vy = camera_get_view_y(view_camera[0]);
			var vw = camera_get_view_width(view_camera[0]);
			var vh = camera_get_view_height(view_camera[0]);	
			
		if (tmpgoRight) {
			var yy= irandom_range(vy+100,vy+(vh*0.75));
			var xx = vx-irandom_range(10,500);			
			} else {
			var yy= irandom_range(vy+100,vy+(vh*0.75));
			var xx = vx+vw+irandom_range(10,500);
			} 
		
		if (instance_number(oButterfly)<6)
		{
			with (instance_create_layer(xx,yy,"BefEdge",oButterfly))
			{
				image_index=irandom_range(0,7);
				goRight=tmpgoRight;alarm[7]=1;
				if (goRight) {image_xscale=1;direction=360;therealdir=360;} else {image_xscale=-1;direction=540;therealdir=540;}
			}
		}
	}
}