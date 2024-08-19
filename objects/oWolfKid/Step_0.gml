/// @desc
// gravity
vsp+=grv;
vsp=clamp(vsp,-10,8);

// who
var who =oFollowPlayer;
if instance_exists(oPlayer) {who=oPlayer;}
if instance_exists(oPlayerAttack) {who=oPlayerAttack;}


// attack end waiting
if (current_state==wolfkidstates.attack) && (image_index==2)
{
	if (hsp>0) {hsp-=0.1;} else {hsp+=0.1;}
	
	if (tilemap_get_at_pixel(tilemap2,x,y+vsp)!=0) or (tilemap_get_at_pixel(tilemap2,x+hsp,y)!=0)
	{
		if (vsp>0)
		{
		image_index=3; alarm[1]=40; hsp=2*sign(image_xscale); landed=true;
		alarm[3]=3; alarm[5]=80;
		}
	}
	
	
	if (tilemap_get_at_pixel(tilemap,x,y+vsp)!=0) or (tilemap_get_at_pixel(tilemap,x+hsp,y)!=0)
	{
		image_index=3; alarm[1]=40; hsp=2*sign(image_xscale);landed=true;
		alarm[3]=3; alarm[5]=80;
	}
}

//
if (landed) && (tilemap_get_at_pixel(tilemap,x+(hsp*15),y)!=0) {
	 current_state=wolfkidstates.climb;
	 canatk=false; alarm[5]=60;
	 landed=false;
	hsp=hsp*0.5; 
	vsp=-5;
	 }


// HORISONTAL BLOCK  
if (tilemap_get_at_pixel(tilemap,x+hsp,y)!=0) && !(bounceblock)
{
bounceblock=true; alarm[7]=5;
hsp=hsp*-1;
image_xscale=0.75*sign(hsp);
}


// VERTICAL BLOCK
if (tilemap_get_at_pixel(tilemap,x,y+vsp)!=0)
{
landed=true; if (current_state==wolfkidstates.climb) {alarm[1]=1;current_state=wolfkidstates.chase;}
vsp=0;
}


// PLATFORM BLOCK
if (tilemap_get_at_pixel(tilemap2,x,y+vsp)!=0) && (self.y>who.y)
{
	if (vsp>=0)
	{
		landed=true;  if (current_state==wolfkidstates.climb) {alarm[1]=1;current_state=wolfkidstates.chase;}
		vsp=0;
	}
}
// jump ani


if !(landed) && (current_state==wolfkidstates.climb)
{
	if (vsp>0)
	{
	sprite_index=sWolfJUMP; image_index=1;
	} else {sprite_index=sWolfJUMP; image_index=0;}
}
// image angle
var side=(sign(image_xscale));
if (side==1)
{
imangle=0-(floor(vsp)*5);
} else {
imangle=0+(floor(vsp)*5);
}
// movement
x+=hsp;
y+=vsp;