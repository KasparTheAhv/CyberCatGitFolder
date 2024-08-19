scr_update_healthbar();
scr_update_cnbar();
// joonista taskid
if (joonistatasks) 
{
	if device_mouse_check_button_released(0,mb_left)
	{
		var _touch_x = device_mouse_x_to_gui(0);	
		var _touch_y = device_mouse_y_to_gui(0);
		if (global.drawTasks)
		{
		if (point_distance(rectx2-30,recty1+40,_touch_x,_touch_y)<30) {global.drawTasks=false;}
		} else {
		if (point_distance(rectx1,recty1,_touch_x,_touch_y)<30) {global.drawTasks=true;}
		}
	}
	
var same=textalpha+textscale+"[fa_center][fa_left]";
task0scri=same+textcolor+"Tasks:";
task1scri=same+task1col+"\n"+task1;
task2scri=same+task2col+"\n\n"+task2;
task3scri=same+task3col+"\n\n\n"+task3;
	if (alphatext<0.8) 
	{
	alphatext+=0.02;	
	if (alpha<0.4) {alpha+=0.01;}
	textalpha="[alpha,"+string(alphatext*global.AL)+"]";	
	}
}

// kui onjumal zoom tase
if (oGodZoom) 
{
	if (zoomLevel<2) {zoomLevel+=0.02; // kui zoom pole 2 siis tee et oleks
		} else {if !(alcam){alcam=true; oFollowPlayer.allowedcam=true;}} // kui zoom on lÃƒÂµpus, allowedcam true 
	if (cn<=0) // tagasi mÃƒÂ¤ngijaks
	{
		if !instance_exists(oPlayer) && (instance_exists(oPlayerGod))
		{	
		with (instance_create_layer(oPlayerGod.x,oPlayerGod.y,"Characters",oPlayer))
		{
			if (room==Room6) {superplatform=true;}
			jumping=true;landed=false; 
			immune=true;
			alarm[4]=20;
			image_blend=c_yellow;
			sprite_index=global.sPlayer;
			image_xscale=0.75*sign(oPlayerGod.image_xscale);
			if instance_exists(oPlayerGod) {instance_destroy(oPlayerGod);}
		}
		with (oVStick) {if (stick_id==2) {self.joonista=false;}}	
			instance_create_layer(x,y,"Characters",oAttackKey);
		}
	
	} else {
		
		if !(global.noBase)
		{
		cn-=0.375; // kui jumal aga on paldejarni, vÃƒÂ¤henda Catnipi
		}
		
		cn=clamp(cn,0,150);}
		
	if (dye>=0) && (varvi) // background color blend
	{dye-=0.02;dye2+=0.02; dye = clamp(dye,0,1);dye2 = clamp(dye2,0,1);
	color = merge_color(c_white,c_black,dye)
	layer_background_blend(layer_id,color);
	var col2=make_color_hsv(0,0,75);
	color2 = merge_color(c_white,col2,dye2)
	layer_background_blend(layer_id2,color2);
	}
// Kui ei ole jumal zoom tase
} else { 
	if (dye<1)
	{
		dye+=0.02; dye2-=0.02;
		dye = clamp(dye,0,1); 	dye2 = clamp(dye2,0,1);
		color = merge_color(c_white,c_black,dye)
		layer_background_blend(layer_id,color);
			var col2=make_color_hsv(0,0,75);
		color2 = merge_color(c_aqua,col2,dye2)
		layer_background_blend(layer_id2,color2);
	}
	
	// Zoomlevel muutused
	if (zoomLevel>1) {zoomLevel-=0.04;if (zoomLevel<1) {zoomLevel=1;}}
	// Tapa jumal ning tekita tavaline player
	if instance_exists(oPlayerGod) 
	{
	if (cn<=0)
		{
			if !instance_exists(oPlayer)
			{	
				with (instance_create_layer(oPlayerGod.x,oPlayerGod.y,"Characters",oPlayer))
				{
					if (room==Room6) {superplatform=true;}
					jumping=true;landed=false;
					immune=true;
					alarm[4]=20;
					image_blend=c_yellow;
					sprite_index=global.sPlayer;
					image_xscale=0.75*sign(oPlayerGod.image_xscale);
					if instance_exists(oPlayerGod) {instance_destroy(oPlayerGod);}
				}				
				with (oVStick) {if (stick_id==2) {self.joonista=false;}}
				instance_create_layer(x,y,"Characters",oAttackKey);
			}
		}	
	}
}

// Update view size
zoomXTo = cam_default_w * zoomLevel;
zoomYTo = cam_default_h * zoomLevel;
temp_cam_w += (zoomXTo - camera_get_view_width(cam)) / 5;
temp_cam_h += (zoomYTo - camera_get_view_height(cam)) / 5;
var temp_cam_w_half = temp_cam_w *0.5;
var temp_cam_h_half = temp_cam_h *0.5;
camera_set_view_size(cam, (temp_cam_w), (temp_cam_h));

// Update destination
if (instance_exists(follow)) {
    xTo = follow.x;
    yTo = follow.y;
}

// Update object position
x += (xTo - x) / 5;
y += (yTo - y) / 5;
// Keep within room
x = clamp(x, temp_cam_w_half, room_width-temp_cam_w_half);
y = clamp(y, temp_cam_h_half, room_height-temp_cam_h_half);

// Update camera view
viewposx=floor(x-temp_cam_w_half);
viewposy=floor(y-temp_cam_h_half);
camera_set_view_pos(cam,viewposx,viewposy);
camera_set_view_border(cam,defborderX*zoomLevel,defborderY*zoomLevel);
