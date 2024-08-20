if !instance_exists(oPlayer) {exit;}

if  (distance_to_object(oPlayer)<30) && (point_distance(mouse_x,mouse_y,x,y)<25)
{
	if !(clicked)
	{
		if !(instance_exists(oPlayerGod))
		{
			if (instance_exists(oPlayer))
			{
				if (sprite_index==sMilkCup)	 {var ind=1;} else { var ind=0;}
				clicked=true;
				with(oPlayer)
				{
				var scale=global.catskinscale;	
				with(instance_create_layer(x,y,"Characters",oPlayerMilk))	
					{
					milkind=ind;
					image_xscale=scale;	
					xx=x+(13*image_xscale);
					yy=y-3;
					algnexx=self.xx;
					algneyy=self.yy;
					}
				instance_destroy();
				}
				instance_destroy();
				
			}
		}
		
		if (room==Room0)
		{
			if !(givenmilkbook)
			{
				givenmilkbook=true;
				xx = self.x;
				yy = self.y;
				
				var cl = camera_get_view_x(view_camera[0])
				var ct = camera_get_view_y(view_camera[0])
				 
				var off_x = xx - cl // x is the normal x position
				var off_y = yy - ct // y is the normal y position
				
				// convert to gui
				var off_x_percent = off_x / camera_get_view_width(view_camera[0])
				var off_y_percent = off_y / camera_get_view_height(view_camera[0])
				
				xx = off_x_percent * display_get_gui_width();
				yy = off_y_percent * display_get_gui_height();
				oGUIBAR.joonistatasks=true;
				with(instance_create_layer(xx,yy,"Particles",oUnlockBook))
				{
				whatbook=4;
				}
			
				if (room==Room0)
				{
				oGUIBAR.task3="+ Task done!";	
				oGUIBAR.task3col="[#4CFF4C]";
				}
			
			}	
		}	
	}	
}