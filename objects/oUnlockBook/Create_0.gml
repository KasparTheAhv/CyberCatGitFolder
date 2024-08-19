gW=global.gameWidth;
gH=global.gameHeight;
start=false;
muutuja=global.GUI*70;
testGuiW=display_get_gui_width();
testGuiH=display_get_gui_height();
xTo=round(testGuiW*0.85);
yTo=round(testGuiH*0.07)+muutuja;
image_speed=0;
image_alpha=0;
spd=12*global.scaler;
startx=self.x;
starty=self.y;
offline=false;
ticker1=false;
// Paste this to whenever u want to unlock a book
//		var xx = where start the throwing of unlocked book;
//		var yy = -||- ;
//		
//		var cl = camera_get_view_x(view_camera[0])
//		var ct = camera_get_view_y(view_camera[0])
//		 
//		var off_x = xx - cl // x is the normal x position
//		var off_y = yy - ct // y is the normal y position
//		
//		// convert to gui
//		var off_x_percent = off_x / camera_get_view_width(view_camera[0])
//		var off_y_percent = off_y / camera_get_view_height(view_camera[0])
//		
//		self.x = off_x_percent * display_get_gui_width();
//		self.y = off_y_percent * display_get_gui_height();
//		
//		with(instance_create_layer(xx,yy,"Partickes",oUnlockBook)
//		{
//		whatbook=[insert book number];
//		}
//
//

