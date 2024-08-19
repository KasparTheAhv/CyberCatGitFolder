/// @desc

if instance_exists(oFollowPlayer) {tar=oFollowPlayer;}
if instance_exists(oPlayer) {tar=oPlayer;}
if instance_exists(oPlayerAttack) {tar=oPlayerAttack;}
if instance_exists(oPlayerFall) {tar=oPlayerFall;}

// check if required to jump or fall
vsp+=grv;vsp=clamp(vsp,-10,10);

// what way to move
var tarxside=sign(tar.image_xscale);
if (tarxside==1)
{
spotx=tar.x-30;		
} else {
spotx=tar.x+30;
}


// move if not near
var dist = point_distance(x,y,spotx,y);
if (dist>4)
{
if (self.x<spotx) {hsp=2;} else {hsp=-2;}
} else {
	if (hsp!=0)
	{
	hsp=0;
	image_xscale=0.5*sign(tar.image_xscale);
	}
	}


// when to drop
if (tar.y-30>self.y) {drop=true;} else {drop=false;}

if (vsp>0)
{
	if tilemap_get_at_pixel(tilemap,x,y+1){vsp=0;landed=true;if (cooldown>0){cooldown-=1;}}
	
	if (drop==false)
	{
	// platform
	if tilemap_get_at_pixel(tilemap2,x,y+1){vsp=0;landed=true;if (cooldown>0){cooldown-=1;}}
	}
}
// when to jump
var ydist = point_distance(x,y,x,tar.y);
var jumpvalue= (ydist/32);
jumpvalue=jumpvalue*3;
if (vsp==0) && (landed)
{
if (tar.y<self.y-52) && (cooldown<=0)
	 {
		cooldown=15;
		landed=false;
		vsp-=jumpvalue;	
	 }
}



// what sprite
if (hsp==0) {image_index=0;image_speed=0;} else {
	image_speed=1;
	if (hsp>0) {image_xscale=0.5;} else {image_xscale=-0.5;}
	}
if (vsp!=0)
{
if (vsp<0) {image_index=2;} else {image_index=3;}
}




self.x+=floor(hsp);
self.y+=floor(vsp);