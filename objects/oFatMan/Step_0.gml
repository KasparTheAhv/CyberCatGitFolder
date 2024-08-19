/// @desc

with (oPlayer) {afksec=-500;}

var whatwall= sign(hsp);
jalady=y+27;

if (vsp<0) {vsp+=0.3;}
vsp=clamp(vsp,-7,0);


if (tilemap_get_at_pixel(tilemap,x+(whatwall*3),jalady)==1) && (tilemap_get_at_pixel(tilemap,x+(whatwall*3),jalady-40)==0)
{
vsp-=9;

}  else {
	if (tilemap_get_at_pixel(tilemap,x+(whatwall*3),jalady)==1)
	{
	hsp=hsp*-1; image_xscale=image_xscale*-1; self.y-=1;
	}
}


// gravity and shit
if (tilemap_get_at_pixel(tilemap,x,jalady+11)==0)
{	
y+=5;
} else {
if (tilemap_get_at_pixel(tilemap,x,jalady+10)==1)
{
y-=1;	
}

}

// target selection
var tar1=noone;
var tar2=oFollowPlayer;
if instance_exists(oSquir){ var tar1 = instance_nearest(x,y,oSquir); }
if instance_exists(oPlayer) {var tar2 = instance_nearest(x,y,oPlayer); }
if instance_exists(oPlayerAttack) {var tar2 = instance_nearest(x,y,oPlayerAttack);}
if instance_exists(oPlayerFall) {var tar2 = instance_nearest(x,y,oPlayerFall);}
if (tar1!=noone)
{
if point_distance(x,y,tar1.x,tar1.y)<point_distance(x,y,tar2.x,tar2.y) {target=tar1;} else {target=tar2;}
}

//
if (current_state==fatmanstates.wander)
{
	if instance_exists(target)
		{
		if (point_distance(x,y,target.x,target.y)<270)
			{
				if (alarm_get(0)>10) {alarm[0]=10;}
			}
		}
}


if (current_state==fatmanstates.spit)
{
heady=y;
headx=x;
	
// who follow
if instance_exists(target)
{
var dir = point_direction(x,y,target.x,target.y);
if (target.x<self.x) {image_xscale=-1.5;} else {image_xscale=1.5;}
image_angle = dir;
firingdelay=firingdelay-1;
recoil=max(0,recoil-1);
//head  y

var spitx=x+(4*sign(image_xscale));
var spity=y-8;
var side=sign(image_xscale);
if (firingdelay<0)
{
	recoil=2;
	firingdelay=14;
	play_sound(snBanana,false);
	with (instance_create_layer(spitx,spity,"Particles",oSpit))
	{
		image_xscale=1.5;
		image_yscale=1.5;
		speed=9;
		direction=dir+(side*5)+irandom_range(-2,2);
		image_angle=dir+(side*5);
	}
}

	headx = headx - lengthdir_x(recoil,dir);
	heady = heady - lengthdir_y(recoil,dir);
	
	if (image_angle>90) && (image_angle<270)
	{
		image_yscale=-1.5;
		image_xscale=-1.5;
		
	} else {
		image_yscale=1.5;
		image_xscale=1.5;
	}

	} else {alarm[0]=1}

}

if (current_state==fatmanstates.follow)
{
	
	
	
	
if instance_exists(target)
{
if (point_distance(x,y,target.x,target.y)<260)
	{
		if (alarm_get(0)>10) {alarm[0]=10;}
	}
} else {target=oFollowPlayer;}


// who follow
var dist = point_distance(x,y,target.x,target.y);
var distx= point_distance(x,y,target.x,y);
// if too far, lose triggerrate
if (dist>270) {
if (triggerrate>0) {triggerrate-=1;}
} else {if (triggerrate<150) {triggerrate+=1;}}
// if not triggered, turn back to wander/stay
if (triggerrate<=0) {current_state=fatmanstates.wander; alarm[0]=1; } 
// switch to spit if close, if not, move towards players X cordinate
	if (distx<160) && (distx>40)  {heady=y; headx=x;
	current_state=fatmanstates.spit; alarm[0]=60; hsp=0;
	} else {	
		followdelay=followdelay-1;
		if (followdelay<0)
		{
			followdelay=30;
			if (target.x<self.x) {hsp=-2; image_xscale=-1.5; } else {hsp=2;image_xscale=1.5; }	
		}
	}
	
}

self.y+=vsp;
self.x+=hsp;