/// @desc
// gravity


if (current_state==wolfstates.stand) 
{
exit;
}
vsp+=grv;
vsp=clamp(vsp,-10,8);
if (howllock>0) {howllock-=1;} 

// start working
if (current_state==wolfstates.wait)
{
	if !instance_exists(oText)
	{
	sprite_index=sWolfHowl;
	current_state=wolfstates.howl;
	alarm[10]=1;
	}
}

// who
var who =oFollowPlayer;
if instance_exists(oPlayer) {who=oPlayer;}
if instance_exists(oPlayerAttack) {who=oPlayerAttack;}


// attack end waiting
if (current_state==wolfstates.attack) && (image_index==2)
{
	if (hsp>0) {hsp-=0.1;} else {hsp+=0.1;}
	
	if (tilemap_get_at_pixel(tilemap2,x,y+vsp)!=0) or (tilemap_get_at_pixel(tilemap2,x+hsp,y)!=0)
	{
		if (vsp>0)
		{
		image_index=3; 
		
		alarm[1]=40; hsp=2*sign(image_xscale); landed=true;
		alarm[3]=3; alarm[5]=80;
		}
	}
	
	
	if (tilemap_get_at_pixel(tilemap,x,y+vsp)!=0) or (tilemap_get_at_pixel(tilemap,x+hsp,y)!=0)
	{
		image_index=3; 
		
		if (readytofight)
		{
		alarm[1]=40; hsp=2*sign(image_xscale);landed=true;
		alarm[3]=3; alarm[5]=80;
		} else {current_state=wolfstates.stand;
			sprite_index=sWolfR; image_index=0; image_speed=0;
			
			}
	}
}



// HORISONTAL BLOCK  
if (tilemap_get_at_pixel(tilemap,x+(hsp*12),y)!=0) && (tilemap_get_at_pixel(tilemap,x+(hsp*12),y-32)!=0)
{
	 if !(bounceblock)
	 {
	bounceblock=true; alarm[7]=5;
	hsp=hsp*-1;
	image_xscale=sign(hsp);
	}
}
if (tilemap_get_at_pixel(tilemap,x+(hsp*12),y)!=0) && (tilemap_get_at_pixel(tilemap,x+(hsp*12),y-32)==0)
{
			 current_state=wolfstates.climb;
		 canatk=false; alarm[5]=60;
		 landed=false;
	hsp=hsp*0.5; 
	vsp=-5;
}


// VERTICAL BLOCK
if (tilemap_get_at_pixel(tilemap,x,y+vsp)!=0)
{
landed=true; if (current_state==wolfstates.climb) {alarm[1]=1;current_state=wolfstates.chase;}
vsp=0;
}


// PLATFORM BLOCK
if (tilemap_get_at_pixel(tilemap2,x,y+vsp)!=0) && (self.y>who.y)
{
	if (vsp>=0)
	{
		landed=true;  if (current_state==wolfstates.climb) {alarm[1]=1;current_state=wolfstates.chase;}
		vsp=0;
	}
}
// jump ani


if !(landed) && (current_state==wolfstates.climb)
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