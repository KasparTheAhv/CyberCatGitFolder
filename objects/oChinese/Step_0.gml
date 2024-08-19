/// @desc

if (alpharise)
{
if (image_alpha<1) {image_alpha+=0.02;}	
} else {
if (image_alpha>0) {image_alpha-=0.05;} else {self.x=xx;self.y=yy; alpharise=true;}
}

if (shieldOn)
{
// actions of shield	
var who=noone;
if instance_exists(oPlayer) {who=oPlayer;}
if instance_exists(oPlayerFall) {who=oPlayerFall;}	
if instance_exists(oPlayerAttack) {who=oPlayerAttack;}

if (who!=noone)
{
		if (point_distance(who.x,who.y,x,y)<shieldDist) && (shieldCooldown==false)
		{
			self.alarm[1]=180;
			shieldCooldown=true;
			with (who)
			{
							self.image_blend=c_orange;
							alarm[8]=30;	
							play_sound(snOuch,false);	
							if (who.x<oChinese.x) {var scale=-4;} else {var scale=4;}					
			}
						with (instance_create_layer(who.x,who.y-1,"Characters",oPlayerFall))
							{
							hsp= 2*scale;
							vsp= -4;
							if (sign(hsp) !=0) image_xscale = sign(hsp)*0.7;
							}
			instance_destroy(who);	
		}
}		

if (changerSwitch)
{		
	if (changer<10) {
		changer2+=0.001;
		changer+=0.1;
	} else {
		changerSwitch=false;
	}
} else {
	if (changer>0) {
		changer2-=0.001;
		changer-=0.1;
	} else {
		changerSwitch=true;
	}
}

// dist increase	
if (shieldDist<150)	{shieldDist+=5;}
} else {
if (shieldDist>0)	{shieldDist-=10;}


var whos=noone;
if instance_exists(oPlayer) {whos=oPlayer;}
if instance_exists(oPlayerFall) {whos=oPlayerFall;}	
if instance_exists(oPlayerAttack) {whos=oPlayerAttack;}
if (whos==noone) {exit;}

var disterX= point_distance(whos.x,0,x,0);
var disterY= point_distance(0,whos.y,0,y);
if (disterX<100) && (disterX>15)
{
	if (disterY<20) && (shieldCooldown==false)
	{
			self.alarm[1]=180;
		shieldCooldown=true;
		self.image_index=1;	
		alarm[5]=120;

		if (whos.x>oChinese.x) 
		{
		var scaler=4;
		self.image_xscale=1.25;
		} else {
		var scaler=-4;
		self.image_xscale=-1.25;
		}
		
		play_sound(snOuch,false);	
		
		if (visible) && (global.GFX1==1)
		{
		part_particles_create(oRoomController.part_sys, whos.x, whos.y,oRoomController.part111,irandom_range(20,25));
		}
		
		with (instance_create_layer(whos.x,whos.y-1,"Characters",oPlayerFall))
			{
			hsp= 2*scaler;
			vsp= -4;
			if (sign(hsp) !=0) image_xscale = sign(hsp)*0.7;
			} 		
		instance_destroy(whos);		
	}
}

}

