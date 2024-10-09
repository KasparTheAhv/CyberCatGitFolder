/// @desc COLLISIONS IN ONE PLACE

// Check if is colliding with anything
var who = instance_place(x,y,colliArray);

// Exit if no collision
if (who==noone) {whoIs=noone; exit;}

// Checking object index
switch (who.object_index) {
	
//////////// Electro case
		case oElectro:   
			if (who.soundon)
			{
				part_particles_create(oRoomController.part_sys, x+(22*image_xscale),y,oRoomController.part10,irandom_range(14,25));
				play_sound(snElectrocuted,false);
			}
			with (instance_create_layer(x,y-1,"Characters",oPlayerFall))
			{
				superplatform=other.superplatform;
				hsp = -2*sign(oPlayerAttack.image_xscale);
				vsp =-2;
				if (sign(hsp) !=0) image_xscale = sign(hsp)*0.75;
			}
			if (room==Room3) {
				if (oGUIBAR.hp==80) { with (oEvent) {if (event_id==8) {alarm[0]=1;}}}
				oLvlEnd.t1=true;
				TaskDone(1);		
			}
			instance_destroy(oPlayerAttack);
		break;
		
//////////// Water case
        case oWater:   
			if !place_meeting(x,y,oBubbleShield)
			{
				if (visible) && (global.GFX1==1)
				{
					part_particles_create(oRoomController.part_sys, x, y,oRoomController.part4,irandom_range(7,12));
				}
				with (instance_create_layer(x,y,"Characters",oPlayerFall))
				{
					oFollowPlayer.target=oPlayerFall;
					alarmer=false;
					hsp=other.hsp*0.5;
					vsp=other.vsp*0.7;
					if (hsp>0) {image_xscale=0.7;}else{image_xscale=-0.7;}
					image_speed=0;
					grv=0.2;
					collision=false;
					tilemap = layer_tilemap_get_id("Collision");
					tilemap2 = layer_tilemap_get_id("Platform");
					sprite_index=global.sPlayerF;
					die=true;
				}
				instance_destroy(self);
			}
		break;
		
//////////// Bird case
        case oBird:   
			with (instance_create_layer(who.x,who.y-3,"Characters",oBirdFall))
			{
				vsp= 2;
				hsp= 2*sign(other.image_xscale);
			}
			var plax= side*12;
			instance_create_layer(self.x+plax,self.y+10,"BefEdge",oSlash);
			instance_destroy(who);
		break;
		
//////////// Bat case
        case oBat: 
			with (instance_create_layer(who.x,who.y-3,"Characters",oBatD))
				{
				vsp= 0;
				hsp= 3*sign(other.image_xscale);
				if (sign(hsp) !=0) image_xscale = sign(hsp)*0.75;
				}
			instance_destroy(who);
			var plax= side*12;
			instance_create_layer(self.x+plax,self.y+10,"BefEdge",oSlash);
		break;
		
//////////// Butterfly case
        case oButterfly:   
			if (who.colorChange==2) 
			{
			var givenippy=true;	
			} else { var givenippy=false;}
			
			with (instance_create_layer(who.x,who.y,who.layer,oButterflyD))
			{
				nippy=givenippy;
				image_blend=who.image_blend;
			}
			instance_destroy(who);
			var plax= side*12;
			instance_create_layer(x+plax,y+10,"BefEdge",oSlash);
		break;
		
//////////// Bird pathless case
        case oBirdPathless:
			var myside = image_xscale;
			with (instance_create_layer(who.x,who.y-3,"Characters",oBirdFall))
			{
			vsp= 2;
			hsp= 2*myside;
			}
			instance_destroy(who);
			var plax= side*12;
			instance_create_layer(self.x+plax,self.y+10,"BefEdge",oSlash);	
		break;
		
//////////// Dog case
        case oDog:
			if !(doglock)
			{
				doglock=true;
				instance_create_layer(x,y,"BefEdge",oNippy);
				instance_create_layer(x,y,"BefEdge",oNippy);
				var plax= side*12;
				instance_create_layer(self.x+plax,self.y+10,"BefEdge",oSlash);
				with(who)
				{
					image_blend=c_red;
					alarm[8]=-1;
					alarm[8]=10;
				}
				play_sound(snDogHit,false);
				if (image_xscale<0) {var mut=-14;} else {mut=14;}
				if (visible) && (global.GFX1==1)
				{
				part_particles_create(oRoomController.part_sys, x+mut, y+6,oRoomController.part7,irandom_range(5,25));
				}
			}		
		break;
		
//////////// Frog case
        case oFrog:   
			with (who)
			{
				if !(immune)
				{
					var dep=who.depth;
					instance_create_depth(x,y-1,dep,oFrogD);
					instance_destroy(who);
				}
			}
			var plax= side*12;
			instance_create_layer(self.x+plax,self.y+10,"BefEdge",oSlash);
		break;
		
//////////// Rat case
        case oRat:   
			var myside = image_xscale;
				with (instance_create_layer(who.x,who.y-3,"Characters",oRatFall))
				{
				vsp= -3;
				hsp= 3*myside;
				if (sign(hsp) !=0) image_xscale = sign(hsp)*0.75;
				}
			instance_destroy(who);
			var plax= side*12;
			instance_create_layer(self.x+plax,self.y+10,"BefEdge",oSlash);
		break;
		
//////////// Squir case
        case oSquir:   
			var who = instance_place(x,y,oSquir)	
			var myside = image_xscale;
			with (instance_create_layer(who.x,who.y-3,"Characters",oSquirFall))
			{
			vsp= -3;
			hsp= 3*myside;
			if (sign(hsp) !=0) image_xscale = sign(hsp);
			}
			instance_destroy(who);
			var plax= side*12;
			instance_create_layer(self.x+plax,self.y+10,"BefEdge",oSlash);
		break;
		
//////////// Snake case
        case oSnake:   
			var myside = sign(image_xscale);
			var temaside=sign(who.image_xscale);
			if (myside==temaside)
			{
				who.alarm[10]=1;
				var plax= side*12;
				instance_create_layer(self.x+plax,self.y+10,"BefEdge",oSlash);
			} else {
				play_sound(snSlash,false);
				with (instance_create_layer(x,y-1,"Characters",oPlayerFall))
				{
				superplatform=other.superplatform;
				hsp= 2*temaside;
				vsp= -3;
				if (sign(hsp) !=0) image_xscale = sign(hsp)*0.75;
				}
				instance_destroy(self);
			}
		break;
		
//////////// Nippy case
        case oNippy:   
			instance_destroy(who); play_sound(snCatnipCount,false);
			if instance_exists(oGUIBAR)
			{
					var settingsmap = ds_map_secure_load("settings.sav")
					var prevValue = ds_map_find_value(settingsmap,"STATS_Catnip");
					if is_undefined(prevValue){prevValue=0;}
					var neWvalue = prevValue+1;
					ds_map_set(settingsmap,"STATS_Catnip",neWvalue);
					ds_map_secure_save(settingsmap,"settings.sav");
					oGUIBAR.cn+=25;
					if instance_exists(oPlayer){target=oPlayer;}
					if instance_exists(oPlayerFall){target=oPlayerFall;}
					if instance_exists(oPlayerAttack){target=oPlayerAttack;}
				if (oGUIBAR.cn>=150)
				{
					if !instance_exists(oLightning)
					{
					self.immune=true;
					instance_create_layer(target.x,target.y,"Particles",oLightning);
					}
				}	
			}
		break;
		
//////////// Helilizard case
        case oHeliLizard:   
			if (self.y<who.y)
			{ // damage player
				play_sound(snOuch,false);	
				with (instance_create_layer(x,y-1,"Characters",oPlayerFall))
				{
				superplatform=other.superplatform;
				hsp= 2*choose(1,-1);
				vsp= -3;
				if (sign(hsp) !=0) image_xscale = sign(hsp)*0.75;
				}
				instance_destroy(oPlayerAttack);
			}
			else 
			{  // kill hel
				instance_create_layer(other.x,other.y,"Characters",oHeliLizardD);
				instance_destroy(who);
				var plax= side*12;
				instance_create_layer(self.x+plax,self.y+10,"BefEdge",oSlash);
			}
		break;
		
//////////// Monkey case
        case oMonke:   
			with(who)
				{
					if !(immune)
					{
						immune=true;
						elud-=1;
						instance_create_layer(x,y,"BefEdge",oNippy);
						image_blend=c_red;
						alarm[8]=-1;
						alarm[8]=10;
						if (elud<=0)
						{
							with (instance_create_layer(self.x,self.y,"Characters",oMonkeDeath))
							{
								image_xscale=other.scale;
								image_yscale=other.scale;
							}
							instance_destroy();
							var plax= side*12;
							instance_create_layer(self.x+plax,self.y+10,"BefEdge",oSlash);
						}
						play_sound(snDogHit,false);
						if (image_xscale<0) {var mut=-14;} else {mut=14;}
						
						if (visible) && (global.GFX1==1)
						{
						part_particles_create(oRoomController.part_sys, x+mut, y+6,oRoomController.part7,irandom_range(5,25));
						}
					}
				}
		break;
		
//////////// Vineshield case
        case oVineShield:   
			var dire=sign(image_xscale)*3*-1;
			
			with (instance_create_layer(x,y-1,"Characters",oPlayerFall))
			{
			superplatform=other.superplatform;
			hsp = dire;
			vsp =-2;
			if (sign(hsp) !=0) image_xscale = sign(hsp)*0.75;
			}
			instance_destroy(self);
		break;
		
//////////// Seal case
        case oSeal:   
			with (who){var direct=point_direction(x,y,other.x,other.y);	}
			with (instance_create_layer(x,y-1,"Characters",oPlayerFall))
			{
			hsp = lengthdir_x(3,direct);
			vsp =-2;
			if (sign(hsp) !=0) image_xscale = sign(hsp)*0.75;
			}
			instance_destroy(oPlayerAttack);
		break;
		
//////////// Wolfkid case
        case oWolfKid:   
			with (who)
			{
				if !(doglock)
				{
					elud-=10;	
					doglock=true;
					instance_create_layer(x,y,"BefEdge",oNippy);
					image_blend=c_red;
					alarm[8]=-1;
					alarm[8]=10;
					play_sound(snDogHit,false);
					if (image_xscale<0) {var mut=-14;} else {mut=14;}
					if (visible) && (global.GFX1==1)
					{
						part_particles_create(oRoomController.part_sys, x+mut, y+6,oRoomController.part7,irandom_range(5,25));
					}
					if (elud<=0) {instance_destroy();}
				}
			}
			var plax= side*12;
			instance_create_layer(self.x+plax,self.y+10,"BefEdge",oSlash);
		break;
		
//////////// ratevent
		case oRatEvent:
			var myside = image_xscale;
			with (instance_create_layer(who.x,who.y-3,"Characters",oRatFall))
			{
				forevercatnip=true;
				vsp= -3;
				hsp= 3*myside;
				if (sign(hsp) !=0) image_xscale = sign(hsp)*0.75;
			}
			instance_destroy(who);
			var plax= side*12;
			instance_create_layer(self.x+plax,self.y+10,"BefEdge",oSlash);
		break;
}


// 	//  what case
//      case who==oObject:   
//
//		break;

