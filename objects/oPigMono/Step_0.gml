/// @desc

if (rotdir<360) {rotdir+=3;} else {rotdir=3;}
vsp=clamp(vsp,-5,4);

if (stage!=3)
{
if (stage==1)
{
if (image_angle>360+270) {image_angle-=10;} else {stage=2;}
}
//
if (stage==2)
{
	var dir = 630;
	image_angle = dir;
	firingdelay=firingdelay-1;
	recoil=max(0,recoil-1);
	if (firingdelay<0)
	{
		self.y-=8;
		recoil=3;
		firingdelay=3;
		play_sound(snShoot,false);
			var sway=irandom_range(-4,4);
		with (instance_create_layer(x,y+10,layer,oBulletMoney))
		{
			image_xscale=1.5;
			image_yscale=1.5;
			alarm[0]=140;
			speed=26;
			direction=dir+sway;
			image_angle=dir+sway;
		}
			var sway=irandom_range(-4,4);
			with (instance_create_layer(x,y+10,layer,oBulletMoney))
		{
			image_xscale=1.5;
			image_yscale=1.5;
			alarm[0]=140;
			speed=26;
			direction=dir+sway;
			image_angle=dir+sway;
		}
	}
	
	
	if (y<777) {stage=3; oFollowPlayer.target=oPlayer;activated=true; }
}
//
}

if !(activated) {exit;}


if !(instance_exists(oPlayerGod))
{

// basic
lastx=x;
lasty=y;
vsp+=grv;
if instance_exists(oCannonFlak) {who = oCannonFlak;}
if instance_exists(oPlayer) {who = oPlayer;}
if instance_exists(oPlayerAttack) {who = oPlayerAttack;}
if instance_exists(oPlayerFall) {who = oPlayerFall;}
if instance_exists(who)
{
idealheight=who.y-190;
if (point_distance(x,0,who.x,0)>100)
{
	if (who.x>x) {hspup=true;} else {hspup=false;}
}

}
if (hspup)
{
if (hsp<2) {hsp+=0.02;}
} else {
if (hsp>-2) {hsp-=0.02;}
}



image_angle=630+(-hsp*12);

// Rise up by shooting if too low height
if (self.y>idealheight)
{
	firingdelay=firingdelay-1;
	recoil=max(0,recoil-1);
	if (firingdelay<0)
	{
		vsp-=1.5;
		recoil=3;
		firingdelay=3;
		play_sound(snShoot,false);
			var sway=irandom_range(-4,4);
		with (instance_create_layer(x,y+10,layer,oBulletMoney))
		{
			image_xscale=1.5;
			image_yscale=1.5;
			alarm[0]=140;
			speed=16;
			direction=other.image_angle+sway;
			image_angle=other.image_angle+sway;
		}
		var sway=irandom_range(-4,4);
		with (instance_create_layer(x,y+10,layer,oBulletMoney))
		{
			image_xscale=1.5;
			image_yscale=1.5;
			alarm[0]=140;
			speed=16;
			direction=other.image_angle+sway;
			image_angle=other.image_angle+sway;
		}
	}
	
	
	
	
	
}


// fall a bit if not shooting


x+=hsp;
y+=vsp;
} else {

var prefdir = point_direction(x,y,oPlayerGod.x,oPlayerGod.y);
var _diff = angle_difference(prefdir, curdir);
curdir += _diff * 0.1;
	
image_angle=curdir;	
x=lastx+lengthdir_x(6,rotdir);	
y=lasty+lengthdir_y(6,rotdir);	
	
if (prefdir>90) && (prefdir<270)
{
	image_yscale=-1;
} else {
	image_yscale=1;
}

	if (pulsate)
	{
	firingdelay=firingdelay-1;
	recoil=max(0,recoil-1);
	if (firingdelay<0)
	{
		vsp-=1.5;
		recoil=3;
		firingdelay=1;
		play_sound(snShoot,false);
			var sway=irandom_range(-2,2);
		with (instance_create_layer(x,y+10,layer,oBulletMoney))
		{
			image_xscale=1.5;
			image_yscale=1.5;
			alarm[0]=140;
			speed=16;
			direction=other.image_angle+sway;
			image_angle=other.image_angle+sway;
		}
		var sway=irandom_range(-2,2);
		with (instance_create_layer(x,y+10,layer,oBulletMoney))
		{
			image_xscale=1.5;
			image_yscale=1.5;
			alarm[0]=140;
			speed=16;
			direction=other.image_angle+sway;
			image_angle=other.image_angle+sway;
		}
	}
	
	
		
	}

	
}