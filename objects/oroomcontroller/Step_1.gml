/// @desc GUI TOUCH
if instance_exists(oPlayerStriking)
{
	if (lineAlphaUp)
	{
		if (lineAlpha<0.65) {lineAlpha+=0.005;} else {lineAlphaUp=false;}
	} else {
		if (lineAlpha>0.5) {lineAlpha-=0.005;} else {lineAlphaUp=true;}
	}
	 layer_background_alpha(strikingback_id, lineAlpha);
} else {
	if (lineAlpha>0)
	{
	lineAlpha-=0.05;
	layer_background_alpha(strikingback_id, lineAlpha);
	}
}
// pause alanud
if instance_exists(oPamenu)
{
	for (var i =0; i<3; i++)
	{
	if device_mouse_check_button_released(i,mb_any)
	{
	var _touch_x = device_mouse_x_to_gui(i);
	var _touch_y = device_mouse_y_to_gui(i);
	var who_touch = instance_position(_touch_x, _touch_y, oPamenu);
	if (who_touch != noone)
	{
		with(who_touch) {who_touch.alarm[1]=1;}
	}
	}
	}
	// Jätka siit kõige mis pause ajal ja vajab puudutamist

if instance_exists(oPajmpKey)
{
	for (var i =0; i<3; i++)
	{
		if device_mouse_check_button_released(i,mb_any)
		{
		var _touch_x = device_mouse_x_to_gui(i);
		var _touch_y = device_mouse_y_to_gui(i);
		var who_touch = instance_position(_touch_x, _touch_y, oPajmpKey);
		if (who_touch != noone)
		{
			with(who_touch) {who_touch.alarm[1]=1;}
		}
		}
	}
}


if instance_exists(oYes)
{
	for (var i =0; i<3; i++)
	{
	if device_mouse_check_button_released(i,mb_any)
	{
	var _touch_x = device_mouse_x_to_gui(i);
	var _touch_y = device_mouse_y_to_gui(i);
	var who_touch = instance_position(_touch_x, _touch_y, oYes);
	if (who_touch != noone)
	{
		with(who_touch) {who_touch.alarm[1]=1;}
	}
	}
	}
}

if instance_exists(oParesa)
{
	for (var i =0; i<3; i++)
	{
	if device_mouse_check_button_released(i,mb_any)
	{
	var _touch_x = device_mouse_x_to_gui(i);
	var _touch_y = device_mouse_y_to_gui(i);
	var who_touch = instance_position(_touch_x, _touch_y, oParesa);
	if (who_touch != noone)
	{
		with(who_touch) {who_touch.alarm[1]=1;}
	}
	}
	}
}
	
	
}


if instance_exists(oJumpKey)
{
	for (var i =0; i<3; i++)
	{
	if device_mouse_check_button_pressed(i,mb_any)
	{
	var _touch_x = device_mouse_x_to_gui(i);
	var _touch_y = device_mouse_y_to_gui(i);
	var who_touch = instance_position(_touch_x, _touch_y, oJumpKey);
	if (who_touch != noone)
	{
		with(who_touch) {my_touch=i;}
	}
	}
	}
}


if instance_exists(oAttackKey)
{
	for (var i =0; i<3; i++)
	{
	if device_mouse_check_button_pressed(i,mb_any)
	{
	var _touch_x = device_mouse_x_to_gui(i);
	var _touch_y = device_mouse_y_to_gui(i);
	var who_touch = instance_position(_touch_x, _touch_y, oAttackKey);
	if (who_touch != noone)
	{
		with(who_touch) {my_touch=i;}
	}
	}
	}
}
//watcher for pause

if instance_exists(oPause)
{
	for (var i =0; i<3; i++)
	{
	if device_mouse_check_button_pressed(i,mb_any)
	{
	var _touch_x = device_mouse_x_to_gui(i);
	var _touch_y = device_mouse_y_to_gui(i);
	var who_touch = instance_position(_touch_x, _touch_y, oPause);
	if (who_touch != noone)
	{
		with(who_touch) {who_touch.alarm[1]=1;}
	}
	}
	}

}

// multi-touch controller for oMagnify
if instance_exists(oMagnify)
{
	for (var i =0; i<3; i++) // loops through touch id's ( for multitouchscreens )
	{
		if device_mouse_check_button_pressed(i,mb_any) // if the exact finger is detected, stored in: " i "
		{
			var _touch_x = device_mouse_x_to_gui(i); // we'll convert the x / y cordinates of that touch only
			var _touch_y = device_mouse_y_to_gui(i); // into gui x / y cordinates
			
			// now we search for an instance id on that position. 
			var who_touch = instance_position(_touch_x, _touch_y, oMagnify); // Return noone if not found
			
			// if who_touch isn't noone, and we touched the gui button
			if (who_touch != noone)
			{ // then we send this what_device id varible into oMagnify. and ring the alarm[1] of oMagnify
				with(who_touch) {who_touch.alarm[1]=1;what_device=i;} 
			}
		}
	}	
}
// give object info
if mouse_check_button_released(mb_middle)
{
	var whatIns=instance_position(mouse_x,mouse_y,all);
	if (whatIns!=noone)
	{
		GetAllVariables(whatIns.id);
	}
}

if instance_exists(oBook)
	{
	for (var i =0; i<3; i++)
	{
	if device_mouse_check_button_pressed(i,mb_any)
	{
	var _touch_x = device_mouse_x_to_gui(i);
	var _touch_y = device_mouse_y_to_gui(i);
	var who_touch = instance_position(_touch_x, _touch_y, oBook);
	if (who_touch != noone)
	{
		with(who_touch) {who_touch.alarm[1]=1;}
	}
	}
	}	
}

if instance_exists(oBooks)
	{
	for (var i =0; i<3; i++)
	{
	if device_mouse_check_button_pressed(i,mb_any)
	{
	var _touch_x = device_mouse_x_to_gui(i);
	var _touch_y = device_mouse_y_to_gui(i);
	var who_touch = instance_position(_touch_x, _touch_y, oBooks);
	if (who_touch != noone)
	{
		with(who_touch) {who_touch.alarm[1]=1;}
	}
	}
	}	
	
}


/// Step event of oRoomController
// BULLET CONTROLS
// oBullet
with (oBulletParent)
{
	if (tilemap_get_at_pixel(tilemap,x,y)!=0) {instance_destroy();}
}


if (flowerlevel)
{
	// with flower parent
	with (oFlowerParent)
	{
		var flowdistance = point_distance(x,y,oFollowPlayer.x,oFollowPlayer.y);
		flowdistance=clamp(flowdistance,0,400);
		if instance_exists(oPlayerGod) {var flowSpd=1;} else {var flowSpd=2;} // actually is duration in seconds
		
		if (flowdistance<400)
		{
			image_angle = Wave(-10,10,flowSpd,0,change);
			visible=true;
			alpha_level=(400-flowdistance)*0.006;
			var flowglow=(((400-flowdistance)*0.0012)+0.52)*255;	
			color=make_color_rgb(flowglow,flowglow,flowglow);
		} else {visible=false;}
	}
}
// birdbase
with (oBirdBase)
{
	if instance_exists(oPlayerGod) {activated=true;} else {
	if (distance_to_object(oFollowPlayer)<250)
	{
	activated=true;
	} else {if !(neverdeactivate) {activated=false;}} }
}
// squirrelbase
with (oSquirrBase)
{
	if instance_exists(oPlayerGod) {activated=true;} else {
	if (distance_to_object(oFollowPlayer)<300) 
	{
	activated=true;
	} else { activated=false;} }
}
// Batbase
with (oBatBase)
{
	if (room!=Room24)
	{
		if (distance_to_object(oFollowPlayer)<300) 
		{
		activated=true;
		}
	}
}
// squirrel
with (oSquir)
{
	//wander
	if (instance_exists(oPlayerGod)) {shootrange=1000;} else {shootrange=230;}
	if (current_state==states.wander)
	{
		if (wanderlock<1) && (distance_to_object(oFollowPlayer)<shootrange) && !(instance_exists(oText)) {vspeed=0; hspeed=0; current_state=states.shoot;}
		var squirhsp = lengthdir_x(movespeed,dire);
		var squirvsp = lengthdir_y(movespeed,dire);
			if (tilemap_get_at_pixel(tilemap,x+squirhsp,y+squirvsp)!=0)
			{ hspeed = lengthdir_x(movespeed,dire); vspeed = lengthdir_y(movespeed,dire); image_angle=direction;} 
			else { hspeed=0;vspeed=0;current_state=states.stay;}
	}
	//shoot
	if (current_state==states.shoot)
	{
		// target selection
		if (humanhater) {if instance_exists(oFatMan){var fatmantarget=oFatMan;}else {var fatmantarget=oFollowPlayer;}} else {var fatmantarget=oFollowPlayer;}
	
		
		if instance_exists(oText) {sprite_index=sSquir;dire=irandom_range(0,359);wanderlock=70*timermod;current_state=states.wander;exit;}
		hspeed=0; vspeed=0; shootdelay-=1;
		if (shots<5)
		{
		var fatdir=point_direction(x,y,fatmantarget.x,fatmantarget.y);
		sprite_index=sSquirD; image_angle=fatdir; image_speed=1;
			if (shootdelay<0)
			{
			shootdelay=11; shots+=1;
				with (instance_create_layer(x,y,"Gun",oBulletSquir))
				{
					if instance_exists(oPlayerGod) {image_blend=c_red;} else {image_blend=c_orange;}
					alarm[0]=140; speed=6; direction=fatdir+irandom_range(-10,10); image_angle=direction-45;
				}
			}
		} else {shootdelay=6;shots=0; sprite_index=sSquir;
				if (distance_to_object(oFollowPlayer)<escaperange) {escapedir=point_direction(x,y,oFollowPlayer.x,oFollowPlayer.y)+180;
					wanderlock=40*timermod;current_state=states.escape;} else {dire=irandom_range(0,359);wanderlock=70*timermod;current_state=states.wander;}
				}
	}
	//escape
	if (current_state==states.escape)
	{
		var squirhsp = lengthdir_x(movespeed,escapedir);
		var squirvsp = lengthdir_y(movespeed,escapedir);
		if (tilemap_get_at_pixel(tilemap,x+squirhsp,y+squirvsp)!=0)
		{
		image_angle=direction;
		hspeed = lengthdir_x(movespeed,escapedir);
		vspeed = lengthdir_y(movespeed,escapedir);	
		} else {
		hspeed=0;vspeed=0;
		if (distance_to_object(oFollowPlayer)<escaperange) && (wanderlock<1) && !(instance_exists(oText)) {wanderlock=70*timermod;current_state=states.shoot;} 
		else {dire=irandom_range(0,359);wanderlock=120*timermod;current_state=states.wander;}
		}
	}
	//stay
	if (current_state==states.stay)
	{
		image_speed=0; hspeed=0; vspeed=0;
	}
	if (wanderlock>0) {wanderlock-=1;}	
}
// Bird eggs
with (oEgg)
{
	var eggxx=x;
	var eggyy=y;
	if (blendable)
	{
	if instance_exists(oPlayerGod) {image_blend=c_red;sprite_index=sMuna2;} else {image_blend=c_white;sprite_index=sMuna;}
	}
	
	if place_meeting(x,y,oBullet) {
		
		if (visible) 
		{
			if (other.GFX1==1)
			{
				part_particles_create(oRoomController.part_sys, eggxx, eggyy,oRoomController.part15,irandom_range(12,15));
			}
		}
		instance_destroy();if instance_exists(oGUIBAR){oGUIBAR.cn+=2.75;}
		}
		
	if (tilemap_get_at_pixel(tmap,x,y)==1) {
		if !(exploded) {exploded=true;
			if (boom)
			{
				if (visible)
				{
					if (other.GFX1==1)
				{
				part_particles_create(oRoomController.part_sys, eggxx, eggyy,oRoomController.part111,irandom_range(20,25));
				}
			}
			with (instance_create_layer(eggxx,eggyy,"Characters",oGas))
				{
				boom=true;
				image_xscale=1.5;
				image_yscale=1.5;
				}
			instance_destroy();
			} else {		
				if (visible)
				{
					if (other.GFX1==1)
					{
					part_particles_create(other.part_sys, eggxx, eggyy,other.part1,irandom_range(12,15));
					}
				}
			instance_create_layer(eggxx,eggyy,"Characters",oGas);
			instance_destroy();
			}
		}
	}
	if (chase)
	{
		image_angle=direction+180;
		if instance_exists(oPlayerGod)
		{
			move_towards_point(oPlayerGod.x,oPlayerGod.y,spd);
			if (distance_to_point(oPlayerGod.x,oPlayerGod.y)<90) {chase=false;}
		} else {cont=true;chase=false;}
	} else if !(cont) {move_towards_point(x,y+10,spd);image_angle=270;}
}
// with oBird
with(oBird)
{
	if (sizeinc)
	{
		if (current<target)
		{
		current+=0.05;
		} else {current=target;sizeinc=false;}
		current=clamp(current,0,target);
	}	
		
	if (direction>90) && (direction<270)
	{		
	image_xscale=-1*current;
	image_yscale=current;
	} else {
	image_xscale=current;
	image_yscale=current;
	}	
	
	if (room!=Room31)
	{
		if (tilemap_get_at_pixel(tilemap,x+(hspeed*10),y)!=0)
		{
		hspeed=hspeed*-1;
		}
		if (tilemap_get_at_pixel(tilemap,x,y+(vspeed*10))!=0)
		{
		vspeed=vspeed*-1;
		}
	}
}
// rat
with (oRat)
{
	vsp+=grv;
	vsp=clamp(vsp,-19,8);
	
	if (jumpdelay>0) {jumpdelay-=1;}
	
	// horistontal collision
	if (tilemap_get_at_pixel(tilemap,x+hsp,y+vsp)!=0)
	{
		image_xscale=image_xscale*-1; hsp=hsp*-1;
	}
	
	if (tilemap_get_at_pixel(tilemap2,x+hsp,y+vsp)!=0)
	{
		image_xscale=image_xscale*-1; hsp=hsp*-1;
	}
	// vertical
	var ratyy = y+2+vsp;
	if (tilemap_get_at_pixel(tilemap,x,ratyy)!=0)
	{	
	vsp=0;
	} 
	if (tilemap_get_at_pixel(tilemap2,x,ratyy)!=0)
	{	
	vsp=0;
	} 
	
	// check if player is nearby and down under. if true, don't collide with platform
	var Ratdist = point_distance(x,y,oFollowPlayer.x,oFollowPlayer.y);
	var RatdistOk = false;
	if (Ratdist<100) && (self.y<oFollowPlayer.y-30) {RatdistOk=true;}
	if (tilemap_get_at_pixel(tilemap3,x,ratyy)!=0) && !(RatdistOk)
	{
	vsp=0;
	}
	//
	if instance_exists(oPlayerGod)
	{
		if (jumpdelay==0) {jumpdelay=irandom_range(100,200); vsp=irandom_range(-5,-7);}
	}
	
	// ad speed
	x += floor(hsp);
	y += floor(vsp);	
}
// oFrog 
with(oFrog)
{
if !(move) {vsp+=grv;vsp=clamp(vsp,-6,6);}

// Horistontal collision (ground)
if (tilemap_get_at_pixel(tilemap,x+hsp,bbox_bottom)!=0) 
{
	move=false
	hsp=0;
}
x += floor(hsp);
// Vertical collision (ground)
bbox_side=bbox_bottom;
if (tilemap_get_at_pixel(tilemap,x-3,bbox_side+vsp)!=0) or (tilemap_get_at_pixel(tilemap,x+3,bbox_side+vsp)!=0)
{
	
		yyy=tilemap_get_cell_y_at_pixel(tilemap,x,bbox_side+vsp)*32-1;
        if (vsp>0){y=yyy;}
        vsp=0; hsp=0;
		move=false;
	if !(attacking) {image_index=0;} hsp=0;
}
// Vertical collision (platform)
if (vsp>=0)
    {
        bbox_side=bbox_bottom;
		if (tilemap_get_at_pixel(tilemap2,x-3,bbox_side+vsp)!=0) or (tilemap_get_at_pixel(tilemap2,x+3,bbox_side+vsp)!=0)
        {
			yyy=tilemap_get_cell_y_at_pixel(tilemap2,x,bbox_side+vsp)*8-1;
            if (vsp>0){y=yyy;}
            vsp=0; hsp=0;
			move=false;
			if !(attacking) {image_index=0;}
			if (blocker==2) {blocker=1;
				ScreenShake(6,30);
				var frogtarget=noone;
				var direct=point_direction(x,y,oFollowPlayer.x,oFollowPlayer.y);	
				if instance_exists(oPlayer) {var frogtarget=oPlayer;}
				if instance_exists(oPlayerAttack) {var frogtarget=oPlayerAttack;}
				if instance_exists(oPlayerFall) {var frogtarget=oPlayerFall;}
				if instance_exists(oPlayerGod) {var frogtarget=oPlayerGod;}
				if instance_exists(oPlayerCyport) {var frogtarget=oPlayerCyport;}
				if instance_exists(oPlayerCypInvi) {var frogtarget=oPlayerCypInvi;}
				if (frogtarget!=noone)
				{
				var frogxx=frogtarget.x;
				var frogyy=frogtarget.y;
				instance_destroy(frogtarget);
				with (instance_create_layer(frogxx,frogyy,"Characters",oPlayerFall))
				{
				superplatform=false;
				hsp = lengthdir_x(3,direct);
				vsp =-2;
				if (sign(hsp) !=0) image_xscale = sign(hsp)*0.75;
				}
				}
				instance_destroy(oKillAll);
				}
        } 
    }
// Change player Y according to VSP
y += floor(vsp);

if (jump) {
	move=true;
	jump=false;
    curvePosition = 0;
    xstart = x;
    ystart = y;
    x_distance = target_x - x; // Please not that this will be a negative number when jumping to the left
	y_targ= target_y;
	cKordaja=0.2+(distance*0.001*sign(distance));
	cKordaja=clamp(cKordaja,0.2,0.8);
    curveSpeed = abs(1 / (distance * 0.1));
    // This adjusts the curve interpolation based on distance of jump
    // This can not be a negative number, so you must use abs in some way if distance is allowed to be negative
    // curveSpeed = 1 / (abs(distance) * 0.1); would do the same thing
}

if (move) {
	image_index=1;
    // Move curve positoin
    curvePosition += (curveSpeed*cKordaja);
    curvePosition = clamp(curvePosition, 0, 1); // I clamped it but it's not critical to do so
	if (curvePosition==1) {move=false;vsp=round(cKordaja*10);}
    // Store a reference to your animation curve
    var _curveStruct = animcurve_get(cur_jump);

    // Interpret channel "x"
    var _channel = animcurve_get_channel(_curveStruct, "x");
    var _value = animcurve_channel_evaluate(_channel, curvePosition);
    x = xstart + (_value * x_distance);


    // Interpret channel "y"
    var _channel = animcurve_get_channel(_curveStruct, "y");
    var _value = animcurve_channel_evaluate(_channel, curvePosition);
	y = lerp(ystart, y_targ, curvePosition) + ( sign(distance) * (_value * distance * 0.25) ); // sign(distance) accounts for jumping to the left
} else {
	if (vsp>2) {image_index=1;}}	
	
}
// monkey
with (oMonke)
{
	vsp+=grv;
	vsp=clamp(vsp,-10,8);
	if (vsp>=0)
	{
		if (tilemap_get_at_pixel(tilemap,x,bbox_bottom+vsp)==1)
		{
			vsp=0;
		}
		if (tilemap_get_at_pixel(tilemap2,x,bbox_bottom+vsp)==1)
		{
			vsp=0;
		}
	}
	x += floor(hsp);
	if (current_state==monkeystates.orbit)
	{
		
	
	
	dir+=dirside;
	
	if (sign(dirside)==1)
	{
	if (circles>2) && (dir>355) {
			if (alarm_get(4)==-1) {alarm[4]=1;}
		}
	if (dir>=356) {dir=1; circles+=1;} 
	} else {
	if (circles>2) && (dir<175) {
			if (alarm_get(4)==-1) {alarm[4]=1;}
		}
	if (dir<0) {dir=356; circles+=1;}
	}
	
	
	x=xx+lengthdir_x(dist,dir);
	y=yy+lengthdir_y(dist,dir);
	
	
	
	var direct = point_direction(x,y,oFollowPlayer.x,oFollowPlayer.y);
	image_angle = direct;
	
	if (image_angle>90) && (image_angle<270)
	{
		image_yscale=-1;
		
	} else {
		image_yscale=1;
	}
	firingdelay=firingdelay-1;
	recoil=max(0,recoil-1);
	if (firingdelay<0) && (startgun)
	{
		recoil=2;
		if (instance_exists(oPlayerGod)) {firingdelay=5;var banspd=10;} else {firingdelay=9;var banspd=8;}
	
		play_sound(snBanana,false);
		with (instance_create_layer(x,y,"Particles",oBulletMonke))
		{
			image_xscale=1.5;
			image_yscale=choose(-1.5,1.5);
			alarm[0]=140;
			speed=banspd;
			direction=direct;
			image_angle=direct;
		}
	}

	
	}
	
	
	
	if (current_state==monkeystates.stay)
	{
	y+=vsp;
	}	
}

// snake
with (oSnake)
{
	vsp+=grv;vsp=clamp(vsp,-6,6);
	if instance_exists(oFollowPlayer) {var tar=oFollowPlayer;}
	if instance_exists(oPlayer) {var tar=oPlayer;}
	if instance_exists(oPlayerGod) {var tar=oPlayerGod;}
	if (hsp!=0) {image_xscale=sign(hsp);}
	if (tilemap_get_at_pixel(tilemap4,x,y-10)!=0)
	{
		if instance_exists(tar) && (lengther==2000)
		{	
		if (self.y>tar.y+16) && (sprite_index!=sSnakeAttack)
				{
				vsp=-2.5;
				}
		}
	}
	
	if (tar==oPlayerGod)
	{
		if (landed) {
			landed=false;
			vsp-=5;
		}
	}
	
	
	
	if (jumping)
	{
	if (jumper) {
		move=true;
		jumper=false;
	    curvePosition = 0;
	    xstart = x;
	    ystart = y;
	    x_distance = target_x - x; // Please not that this will be a negative number when jumping to the left
		y_targ= target_y;
		cKordaja=0.2+(distance*0.001*sign(distance));
		cKordaja=clamp(cKordaja,0.2,0.8);
	    curveSpeed = abs(1 / (distance * 0.1));
	    // This adjusts the curve interpolation based on distance of jump
	    // This can not be a negative number, so you must use abs in some way if distance is allowed to be negative
	    // curveSpeed = 1 / (abs(distance) * 0.1); would do the same thing
	}
	
	if (move) {
		image_index=1;
	    // Move curve positoin
	    curvePosition += (curveSpeed*cKordaja);
	    curvePosition = clamp(curvePosition, 0, 1); // I clamped it but it's not critical to do so
		if (curvePosition==1) {image_speed=1;jump=false;jumping=false;move=false;walk=true;vsp=round(cKordaja*10);alarm[0]=5;}
	    // Store a reference to your animation curve
	    var _curveStruct = animcurve_get(cur_jump);
	
	    // Interpret channel "x"
	    var _channel = animcurve_get_channel(_curveStruct, "x");
	    var _value = animcurve_channel_evaluate(_channel, curvePosition);
	    x = xstart + (_value * x_distance);
	
	
	    // Interpret channel "y"
	    var _channel = animcurve_get_channel(_curveStruct, "y");
	    var _value = animcurve_channel_evaluate(_channel, curvePosition);
		y = lerp(ystart, y_targ, curvePosition) + ( sign(distance) * (_value * distance * 0.25) ); // sign(distance) accounts for jumping to the left
	} else {
		if (vsp>2) {image_index=1;}}
	exit;
	}
	// Vertical collision (ground)
	bbox_side=bbox_bottom;
	if (tilemap_get_at_pixel(tilemap,x-3,bbox_side+vsp)!=0) or (tilemap_get_at_pixel(tilemap,x+3,bbox_side+vsp)!=0)
	{
			yyy=tilemap_get_cell_y_at_pixel(tilemap,x,bbox_side+vsp)*32-1;
	        if (vsp>0){y=yyy;}
			landed=true;
	        vsp=0;
			move=false;
	}
	// Change player Y according to VSP
	
	
	if (attack)
	{
	if (image_index>=8) { lengther=210;attack=false;
		sprite_index=sSnakeMove; alarm[0]=irandom_range(100,200); walk=true; image_speed=1;
		}
	}
	
	
	// Horistontal collision (ground)
	if (tilemap_get_at_pixel(tilemap,x+(32*sign(hsp)),self.y)!=0) 
	{
		if !(jump) && !(attack)
		{		
		lasthsp=hsp;
		hsp=0;
		jump=true;
		alarm[0]=-1;
		alarm[1]=1;
		} else {hsp=-1*hsp;}
	}
	
	if (point_distance(x,y,oFollowPlayer.x,oFollowPlayer.y)<800) or (instance_exists(oPlayerGod))
	{
	y += floor(vsp);
	x += floor(hsp);
	}	
}
// with bat
with (oBat)
{
		var batwho = oFollowPlayer;
		if instance_exists(oPlayerFall) {batwho = oPlayerFall;}
		if instance_exists(oPlayer) {batwho = oPlayer;}
		if instance_exists(oPlayerAttack) {batwho = oPlayerAttack;}
		if instance_exists(oPlayerGod) {batwho = oPlayerGod; flyspeed=4;} else {flyspeed=3;}
		
	if !(activated)
	{
		if (point_distance(x,y,batwho.x,batwho.y)<100) {activated=true;
			sprite_index=sBatFly; image_speed=1; 
			}
	}
	else 
	
	{
		
		var batwho = oFollowPlayer;
		if instance_exists(oPlayerGod) {batwho = oPlayerGod;}
		if instance_exists(oPlayerFall) {batwho = oPlayerFall;}
		if instance_exists(oPlayer) {batwho = oPlayer;}
		if instance_exists(oPlayerAttack) {batwho = oPlayerAttack;}
		var batleng = point_distance(x,y,batwho.x,batwho.y);
		batleng=clamp(batleng,20,180);
		if instance_exists(oPlayerGod) {batleng=200;}
	if (righthanded)
	{
		if (atkangle<360)	{atkangle+=10;} else {atkangle=0;}
		}else{
		if (atkangle>0)	{atkangle-=10;} else {atkangle=360;}
	}
		
	
	if (batwho.x<self.x) {image_xscale=-1;} else {image_xscale=1;}
	
	var battargetX=batwho.x+lengthdir_x(batleng,atkangle);
	var battargetY=batwho.y+lengthdir_y(batleng,atkangle);
	
	if (point_distance(batwho.x,batwho.y,x,y)>10)
	{
	move_towards_point(battargetX,battargetY,flyspeed);
	}
	if tilemap_get_at_pixel(tilemap,x+(hspeed*2),y)
	{
			hspeed=0;
	}
	if tilemap_get_at_pixel(tilemap,x,y+(vspeed*2))
	{
			vspeed=0;
	}
		
}	
	
}

with (oBirdFall)
{
	/// @description Insert description here
	var fallbbox_side;
	// gravity
	vsp+=grv;
	
	//horistontal collision
	if (hsp>0) fallbbox_side=bbox_right; else fallbbox_side=bbox_left;
	if (tilemap_get_at_pixel(tilemap,fallbbox_side+hsp,bbox_top)!=0) or (tilemap_get_at_pixel(tilemap,fallbbox_side+hsp,bbox_bottom)!=0)
	{
		if (hsp>0){ x = x - ( x mod 32 ) + 31 - (bbox_right - x);}
		else {x = x - ( x mod 32 ) - (bbox_left - x );}
		hsp=0;
	}
	x += floor(hsp);
	//vertical collision
	if (vsp>0) fallbbox_side=bbox_bottom; else fallbbox_side=bbox_top;
	if (tilemap_get_at_pixel(tilemap,bbox_left,fallbbox_side+vsp)!=0) or (tilemap_get_at_pixel(tilemap,bbox_right,fallbbox_side+vsp)!=0)
	{
		if (vsp>0){ y = y - ( y mod 32 ) + 31 - (bbox_bottom - y); collision=true;grv=0;}
		else {y = y - ( y mod 32 ) - (bbox_top - y );}
		vsp=0;
		hsp=0;	
	} 
	y += floor(vsp);
	if (vsp==0) && (collision) {if !(alarmer) {alarmer=true;alarm[10]=1;}}	
}


with (oSlimey)
{
vsp+=grv;
vsp=clamp(vsp,-8,8);

if (cur_state==slistates.pool) && !(mutating)
{
	var whoslimey=oFollowPlayer;
	if instance_exists(oPlayer){var whoslimey = oPlayer;	}
	if (point_distance(whoslimey.x,whoslimey.y,x,y)<150) && !(cooldown)
	{
		cooldown=true;
		mutating=true; alarm[2]=1;
	}
}

if (cur_state==slistates.walk)
{
	if (image_index<=1) {hspamp=0;}
	if (image_index=1)&&(image_index<5) {hspamp=1;}
	if (image_index==5) {hspamp=0.5;}
	if (image_index>5) {hspamp=0.2;}
	
	hspreal=hsp*hspamp;
	
	
	if (tilemap_get_at_pixel(tilemap,x+(hspreal*10),y-4)!=0) { hsp= hsp*-1; image_xscale=sign(hsp)*0.75; }
	self.x+=floor(hspreal);
}

if  (cur_state==slistates.chase)
{

	
	if (image_index<=1) {hspamp=0;}
	if (image_index=1)&&(image_index<5) {hspamp=2;}
	if (image_index==5) {hspamp=0.75;}
	if (image_index>5) {hspamp=0.3;}
	
	hspreal=hsp*hspamp;
	
	
	if (tilemap_get_at_pixel(tilemap,x+(hspreal*10),y-4)!=0) { hsp= hsp*-1; image_xscale=sign(hsp)*0.75; }
	

	self.x+=floor(hspreal);
}

if (tilemap_get_at_pixel(tilemap,x,y+vsp)!=0) {vsp=0;}
	self.y+=vsp;	
}