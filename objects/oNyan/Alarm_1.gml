xx = camera_get_view_x(view_camera[0]);
yy = camera_get_view_y(view_camera[0]);



pisuty=viewH*0.25;
pisuy=viewH*0.15;
targetx = camera_get_view_x(view_camera[0])+(viewW*0.5);
targety = camera_get_view_y(view_camera[0])+(viewH*0.5);
xx = camera_get_view_x(view_camera[0])+(viewW*0.5);
yy = camera_get_view_y(view_camera[0])+(viewH*0.5)+(viewH);
keyboardy=yy;
keyx1=camera_get_view_x(view_camera[0])+(viewW*0.13);
keyx2=camera_get_view_x(view_camera[0])+(viewW*0.87);

keytargety = camera_get_view_y(view_camera[0])+(viewH)-pisuty;
working=true;
play_sound(snShot,false);