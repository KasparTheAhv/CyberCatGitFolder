// Get joystick x/y axis
var bbox_side;
var yyy;
var PCMove=false;
// pcconversion for movement
if (os_type!=os_android)
{
	//if !(global.reading)
	if instance_exists(oVStick) && (oVStick.toimi)
	{
		// Left and right
		if (keyboard_check(ord("A"))) {var PCMove=true;var moveleft=true;} else {var moveleft=false;}
		if (keyboard_check(ord("D"))) {var PCMove=true;var moveright=true;} else {var moveright=false;}
		
		if !(moveleft) && !(moveright) {PCxaxis=0;}
		if (moveleft) && (moveright) {PCxaxis=0;} else 
		{
		if (moveleft) {if (PCxaxis>-1) {PCxaxis=-1;}}
		if (moveright) {if (PCxaxis<1) {PCxaxis=1;}}
		}
		
		// up and down
		if (keyboard_check(ord("W"))) or (keyboard_check(vk_space)) {var PCMove=true;var moveup=true;} else {var moveup=false;}
		if (keyboard_check(ord("S"))) {var PCMove=true;var movedown=true;} else {var movedown=false;}
		
		if !(moveup) && !(movedown) {PCyaxis=0;} 	
		if (moveup) && (movedown)	{PCyaxis=0;} else
		{
			if (moveup) {if (PCyaxis>-1) {PCyaxis=-1;}}
			if (movedown){if (PCyaxis<1) {PCyaxis=1;}}	
		}
		
		var xaxis=PCxaxis;
		var yaxis=PCyaxis;
	} else {
		var xaxis=0;
		var yaxis=0;	
	}
// Android axis
} else {
	var xaxis=vstick_get_xaxis(1);
	var yaxis=vstick_get_yaxis(1);
}

// Afk animation
if (afksec>300)
{
	afk=true;
	if !(global.loafing)
	{
		global.loafing=true;
		// Achievement: Just Loafing
		if (global.isAndroid)
		{
		GooglePlayServices_Achievements_Unlock("CgkIgbe1i_EYEAIQJw");
		}
	}
} else {afk=false;}

// If player switches movement side, lower current speed.
canjump-=1;
if (lastSide!=image_xscale) {walksp-=1;}
walksp=clamp(walksp,1.5,3.4);
lastSide=image_xscale;

// Apply gravity
if (allowgra)
{
vsp+=grv;
vsp=clamp(vsp,-19,8);
vspP=vsp;
}

// Animate player object based on movement
if instance_exists(oVStick)
{
	var spd =xaxis*1.3;
	spd=clamp(spd,-1,1);
	if (usable) && !(hspimmune) {hsp = round(spd*walksp*slow);}
	
			// new place -> to old place if issues show up	
			if (!jumping) {if (x!=lastx) {
			image_speed=walksp*0.1+0.7;
			sprite_index=global.sPlayerR;}else{if(afk){image_speed=1;sprite_index=global.sPlayerAFK}else {sprite_index=global.sPlayer;}}}
	
	//
	if vstick_check(1) or (PCMove)
	{
		afksec=0;
		if (walksp<3.4) {walksp+=0.035;} else {walksp=3.4;}
		if (hsp!=0) {if (hsp>0) {image_xscale=0.75;} else {image_xscale=-0.75;}}
		// old place
		// 
		//
		lastx=self.x;
	} else {afksec+=1; walksp=1.5;if !(jumping) {if !(afk)  {sprite_index=global.sPlayer;}else{image_speed=1;sprite_index=global.sPlayerAFK;}}}
}




// Horistontal collision (ground)
if (hsp>0) bbox_side=bbox_right; else bbox_side=bbox_left;
if (tilemap_get_at_pixel(tilemap,bbox_side+hsp,y-10)!=0) or (tilemap_get_at_pixel(tilemap,bbox_side+hsp,y+10)!=0)
{
	if (hsp>0){ x = x - ( x mod 32 ) + 31 - (bbox_right - x);}
	else {x = x - ( x mod 32 ) - (bbox_left - x );}
	hsp=0;walksp=1.5;self.hspimmune=false;
}
// Vertical collision (ground)
if (vsp>0) bbox_side=y+10; else bbox_side=y-10;
if (tilemap_get_at_pixel(tilemap,bbox_left,bbox_side+vsp)!=0) or (tilemap_get_at_pixel(tilemap,bbox_right,bbox_side+vsp)!=0)
{
	
	if (vsp>0){ y = y - ( y mod 32 ) + 31 - (y+10 - y);landed=true;jumping=false;canjump=10;}
	else {y = y - ( y mod 32 ) - (y-10 - y );}
	vsp=0;self.hspimmune=false;
	if (allowlandsn) {allowlandsn=false;play_sound(snLanding,false); }
}
// Small Horistontal collision (ground)
if (hsp>0) bbox_side=bbox_right; else bbox_side=bbox_left;
if (tilemap_get_at_pixel(tilemap3,bbox_side+hsp,y-10)!=0) or (tilemap_get_at_pixel(tilemap3,bbox_side+hsp,y+10)!=0)
{
	//if (hsp>0){ x = x - ( x mod 32 ) + 31 - (bbox_right - x);}
	//else {x = x - ( x mod 32 ) - (bbox_left - x );}
	hsp=0;walksp=1.5;self.hspimmune=false;
}

// Small Vertical collision (ground)
if (vsp>=1)
    {
        bbox_side=y+10;
		if (tilemap_get_at_pixel(tilemap3,x,bbox_side+vsp)!=0) or (tilemap_get_at_pixel(tilemap3,x,bbox_side+vsp)!=0)
        {
			yyy=tilemap_get_cell_y_at_pixel(tilemap3,x,bbox_side+vsp)*8-13;
            if (vsp>0){y=yyy+2;landed=true;jumping=false;canjump=10;image_speed=1;}
            vsp=0;hspimmune=false;
			if (allowlandsn) {allowlandsn=false;play_sound(snLanding,false); }
        } 
		else
		{
		if (tilemap_get_at_pixel(tilemap3,x,bbox_side+vspP)!=0) or (tilemap_get_at_pixel(tilemap3,x,bbox_side+vspP)!=0)
        {
			yyy=tilemap_get_cell_y_at_pixel(tilemap3,x,bbox_side+vspP)*8-13;
            if (vsp>0){y=yyy+2;landed=true;jumping=false;canjump=10;image_speed=1;}
            vsp=0;hspimmune=false;
			if (allowlandsn) {allowlandsn=false;play_sound(snLanding,false); }
        }	
		}
    } 
	if (vsp<0)
	{
		if (tilemap_get_at_pixel(tilemap3,x,bbox_top+vsp)!=0) or (tilemap_get_at_pixel(tilemap3,x,bbox_top+vsp)!=0)
        {
            vsp=0;hspimmune=false;image_speed=1;
        }
	}
x += round(hsp);

// Rainbow col
if place_meeting(x,y,oRainbow)
{
	if (oRainbow.image_alpha>0.1)
	{
	landed=true;jumping=false;if (vsp>0) {vsp=0;} 
	canjump=10;
	}
}

// Vertical collision (platform)
if (superplatform)
{
	if (vsp>=1)
    {
        bbox_side=bbox_bottom-2;
		if (tilemap_get_at_pixel(tilemap2,x-3,bbox_side+vsp)!=0) or (tilemap_get_at_pixel(tilemap2,x+3,bbox_side+vsp)!=0)
        {
			yyy=tilemap_get_cell_y_at_pixel(tilemap2,x,bbox_side+vsp)*8-13;
            if (vsp>0){y=yyy+2;landed=true;jumping=false;canjump=10;image_speed=1;}
            vsp=0;hspimmune=false;
			if (allowlandsn) {allowlandsn=false;play_sound(snLanding,false); }
        } 
		else
		{
		if (tilemap_get_at_pixel(tilemap2,x-3,bbox_side+vspP)!=0) or (tilemap_get_at_pixel(tilemap2,x+3,bbox_side+vspP)!=0)
        {
			yyy=tilemap_get_cell_y_at_pixel(tilemap2,x,bbox_side+vspP)*8-13;
            if (vsp>0){y=yyy+2;landed=true;jumping=false;canjump=10;image_speed=1;}
            vsp=0;hspimmune=false;
			if (allowlandsn) {allowlandsn=false;play_sound(snLanding,false); }
        }	
		}
    }
} else {
	if !(yaxis>=0.6)  // check if joystick is pulled down. If its not pulled enough. apply collision else remove collision
	{
	    if (vsp>=1)
	    {
	        bbox_side=bbox_bottom-2;
			if (tilemap_get_at_pixel(tilemap2,x-3,bbox_side+vsp)!=0) or (tilemap_get_at_pixel(tilemap2,x+3,bbox_side+vsp)!=0)
	        {
				yyy=tilemap_get_cell_y_at_pixel(tilemap2,x,bbox_side+vsp)*8-13;
	            if (vsp>0){y=yyy+2;landed=true;jumping=false;canjump=10;}
	            vsp=0;self.hspimmune=false;
				if (allowlandsn) {allowlandsn=false;play_sound(snLanding,false); }
				milline=1;
	        } 
			else
			{
			if (tilemap_get_at_pixel(tilemap2,x-3,bbox_side+vspP)!=0) or (tilemap_get_at_pixel(tilemap2,x+3,bbox_side+vspP)!=0)
	        {
				milline=2;
				yyy=tilemap_get_cell_y_at_pixel(tilemap2,x,bbox_side+vspP)*8-13;
	            if (vsp>0){y=yyy+2;landed=true;jumping=false;canjump=10;}
	            vsp=0;
				if (allowlandsn) {allowlandsn=false;play_sound(snLanding,false); }
	        }	
			}
	    }
	}
}


// Jump animation
if (vsp>0.9) {allowlandsn=true;sprite_index=global.sPlayerA;image_speed=0;image_index=1;boatWho=noone;
	if !(jumping)
	{
	var al =alarm_get(0);
	if (al<0) {alarm[0]=10;}
	}
	} else if (vsp<-0.9) {allowlandsn=true;boatWho=noone;sprite_index=global.sPlayerA;image_speed=0;image_index=0;}
	
	
// Jump
if (global.jumpkey==0) // jump from joystick
{
	
	if (yaxis>-0.68) {aJumpBlock=false;}
	
	if (global.autoJump==1)
	{
	if (canjump>0)&&(yaxis<-0.68) {if (landed){canjump=0;jumping=true;alarm[1]=25; {vsp=-5.8*jumpamp;}}}
	} else {
	if !(aJumpBlock)
		{
		if (canjump>0)&&(yaxis<-0.68) {if (landed){aJumpBlock=true; canjump=0;jumping=true;alarm[1]=25; {vsp=-5.8*jumpamp;}}}
		}
	}
} 


// Change player Y according to VSP
y += floor(vsp);

// image angle
var side=(sign(image_xscale));
if (side==1)
{
imangle=0-(floor(vsp)*3.5);
} else {
imangle=0+(floor(vsp)*3.5);
}

// Teleport attack
for (var i =0; i<3; i++)
{
	if (device_mouse_check_button_pressed(i,mb_any))
	{
		whatdevice=i;
		alarm[7]=1;
	}
}

// Tumble weed collision
if (room==Room16)
{
	if (immune){exit;}
	var count=collision_point_list(x,y,oTumbleweed,false,true,_list,false);
	if (count>=2)
	{
		
		
		with (instance_create_layer(x,y-1,"Characters",oPlayerFall))
		{
		oGUIBAR.cn-=25;	
		superplatform=other.superplatform;
		hsp= -2;
		vsp= -3;
		if (sign(hsp) !=0) image_xscale = sign(hsp)*0.75;
		}
		instance_destroy(oPlayer);
	} else if (count==1) {
		slow=0.2; alarm[8]=20;
	}
}