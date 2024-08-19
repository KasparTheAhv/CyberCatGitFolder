/// @desc
if (image_xscale<targetscale)
{
image_xscale+=0.2;
image_yscale+=0.2;
} 



if (current_state==monoclestates.wander)
{
	if (point_distance(x,y,targetx,targety)>30)
	{
	if (speeder<6) {speeder+=0.2;}
	move_towards_point(targetx,targety,speeder); 
	} else {
		if (speed>=0) {if (alarm_get(1)==-1) {alarm[1]=irandom_range(60,120);}} // alarm 1 give new target location
		if (speed>0){speeder-=0.3;} speeder=clamp(speeder,0,4);speed=speeder;}
}

if (current_state==monoclestates.chase)
{
		var who = oFollowPlayer;
		if instance_exists(oPlayer) {var who = oPlayer;}
		if instance_exists(oPlayerFall) {var who = oPlayerFall;}
		if instance_exists(oPlayerAttack) {var who = oPlayerAttack;}
		
	if !(clamped)
	{
			if (point_distance(who.x,who.y-75,x,y)<35)
			{
				clamped=true; alarm[3]=30; alarm[0]=-1; alarm[1]=-1;alarm[2]=-1;
			} else { move_towards_point(who.x,who.y-75,3);}
			
	
	} else { 

		var spd= floor(point_distance(who.x,who.y-75,x,y)*0.1);
		
		move_towards_point(who.x,who.y-75,spd);

	}
}

if (current_state==monoclestates.laser)
{
	if (laserStart)
	{
		if (laserAlpha<0.8) {
		laserAlpha+=0.02;	
		} else {
		// detect who
		var who = oFollowPlayer;
		if instance_exists(oPlayer) {var who = oPlayer;}
		if instance_exists(oPlayerFall) {var who = oPlayerFall;}
		if instance_exists(oPlayerAttack) {var who = oPlayerAttack; }
		// take dist from them
		laserDist=point_distance(who.x,who.y,x,y)+20;
		
		// destination cords
		xx1=x+lengthdir_x(laserDist,laserRot);
		yy1=y+lengthdir_y(laserDist,laserRot);
		// inner monocle
		xx2=x+lengthdir_x(fromInner,laserRot+90);
		yy2=y+lengthdir_y(fromInner,laserRot+90);
		
		xx3=x+lengthdir_x(fromInner,laserRot-90);
		yy3=y+lengthdir_y(fromInner,laserRot-90);
		
		// How to rotate
		if (laserRotParemale)
		{
			if (laserRotRemain>0) {laserRotRemain-=1.5; laserRot+=1.5;  } else {laserStart=false;}
		} else {
			if (laserRotRemain>0) {laserRotRemain-=1.5; laserRot-=1.5;  } else {laserStart=false;}
		}
		
		// laser caught player
		var kes=noone;
		var kes = collision_line(x,y,xx1,yy1,oPlayer,true,true);
		
		if (kes!=noone) {
			with (kes)
			{
	
					var amp=1;
					play_sound(snOuch,false);	
					var scale=choose(-1,1);
					with (instance_create_layer(x,y-1,"Characters",oPlayerFall))
					{
						superplatform=other.superplatform;
					hsp= 2*scale*amp;
					vsp= -3*amp;
					if (sign(hsp) !=0) image_xscale = sign(hsp)*0.75;
					}
					instance_destroy(kes);	
			}
	
		}
		
		
		// particle
		if (global.GFX1==1)
		{
		part_particles_create(oRoomController.part_sys,xx1,yy1,oRoomController.part6,irandom_range(1,2));
		}
		
		}
	} else {
		if (laserAlpha>0) {laserAlpha-=0.02;} else {laserAlpha=0;current_state=monoclestates.rest;alarm[0]=600;}
	}	
} 
	
if (current_state==monoclestates.rest)
{
	
	if (tilemap_get_at_pixel(tilemap,x,y+vspeed)!=0)
	{
		vspeed=0;
		
		if place_meeting(x,y,oPlayerAttack) 
		{
			elud-=1;
			if (elud>0)
			{
				part_particles_create(oRoomController.part_sys, x, y-3,oRoomController.part13,irandom_range(14,20));
			current_state=monoclestates.nothing;alarm[0]=1;
			} else {
			instance_destroy();	
			
			part_particles_create(oRoomController.part_sys, x, y-3,oRoomController.part13,irandom_range(14,20));
			}
			
			
			}
		
	} else {
		
		var ajutine=noone;
		if instance_exists(oPlayer) {var ajutine=oPlayer;}
		if instance_exists(oPlayerAttack) {var ajutine=oPlayerAttack;}
		
		if (ajutine!=noone)
		{
			if (place_meeting(x,y,ajutine))
			{
				with (ajutine)
				{				
						if !(immune)
						{
					
							var amp=1;
							play_sound(snOuch,false);	
							var scale=choose(-1,1);
							with (instance_create_layer(x,y-1,"Characters",oPlayerFall))
							{
								superplatform=other.superplatform;
							hsp= 2*scale*amp;
							vsp= -3*amp;
							if (sign(hsp) !=0) image_xscale = sign(hsp)*0.75;
							}
							instance_destroy(ajutine);
						}			
				}
			}
		}

		if (vspeed<12) {vspeed+=0.5;}
	}
} else {
		part_particles_create(oRoomController.part_sys, x+14, y+26,oRoomController.part8,irandom_range(2,3));
		part_particles_create(oRoomController.part_sys, x-14, y+26,oRoomController.part8,irandom_range(2,3));
}


hsp=hspeed;
vsp=vspeed;


with (oPlayer)
{
	if place_meeting(x,y,oChainRing)
	{
		if !(immune)
		{
		
			var amp=1;
			play_sound(snOuch,false);	
			var scale=choose(-1,1);
			with (instance_create_layer(x,y-1,"Characters",oPlayerFall))
			{
				superplatform=other.superplatform;
			hsp= 2*scale*amp;
			vsp= -3*amp;
			if (sign(hsp) !=0) image_xscale = sign(hsp)*0.75;
			}
			instance_destroy(oPlayer);
		}
	}
}

with (oPlayerAttack)
{
	if place_meeting(x,y,oChainRing)
	{
		if !(immune)
		{
			
			var amp=1;
			play_sound(snOuch,false);	
			var scale=choose(-1,1);
			with (instance_create_layer(x,y-1,"Characters",oPlayerFall))
			{
				superplatform=other.superplatform;
			hsp= 2*scale*amp;
			vsp= -3*amp;
			if (sign(hsp) !=0) image_xscale = sign(hsp)*0.75;
			}
			instance_destroy(oPlayerAttack);
		}
	}
}

if (current_state==monoclestates.ending)
{
		if place_meeting(x,y,oPlayerAttack) 
		{
			elud-=1;
			if (elud>0)
			{
				part_particles_create(oRoomController.part_sys, x, y-3,oRoomController.part13,irandom_range(14,20));
			current_state=monoclestates.nothing;alarm[0]=1;
			} else {
			instance_destroy();	
			
			part_particles_create(oRoomController.part_sys, x, y-3,oRoomController.part13,irandom_range(14,20));
			}
			
			
			}
			
	if (point_distance(x,y,1115,330) >3)
	{
		move_towards_point(1115,330,3);
	} else {
		hspeed=0;
		vspeed=0;
		speed=0;
		// detect who
		var who = oFollowPlayer;
		if instance_exists(oPlayer) {var who = oPlayer;}
		if instance_exists(oPlayerFall) {var who = oPlayerFall;}
		if instance_exists(oPlayerAttack) {var who = oPlayerAttack; }
		// take dist from them
		laserDist=point_distance(who.x,who.y,x,y)+20;
		
		// destination cords
		xx1=x+lengthdir_x(laserDist,laserRot);
		yy1=y+lengthdir_y(laserDist,laserRot);
		// inner monocle
		xx2=x+lengthdir_x(fromInner,laserRot+90);
		yy2=y+lengthdir_y(fromInner,laserRot+90);
		
		xx3=x+lengthdir_x(fromInner,laserRot-90);
		yy3=y+lengthdir_y(fromInner,laserRot-90);
		
	if (laserStart)
	{
		if (laserAlpha<0.8) {
		laserAlpha+=0.02;	
		} else {
			

		
		// How to rotate
		laserRot+=1;
		
		// laser caught player
		var kes=noone;
		var kes = collision_line(x,y,xx1,yy1,oPlayer,true,true);
		
		if (kes!=noone) {
			with (kes)
			{
			
					var amp=1;
					play_sound(snOuch,false);	
					var scale=choose(-1,1);
					with (instance_create_layer(x,y-1,"Characters",oPlayerFall))
					{
						superplatform=other.superplatform;
					hsp= 2*scale*amp;
					vsp= -3*amp;
					if (sign(hsp) !=0) image_xscale = sign(hsp)*0.75;
					}
					instance_destroy(kes);	
			}
	
		}
		
		// particle
		if (global.GFX1==1)
		{
		part_particles_create(oRoomController.part_sys,xx1,yy1,oRoomController.part6,irandom_range(1,2));
		}
		
		}
	} 
} 
}