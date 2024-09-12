/// @desc collisions in one place

// Bird object
if place_meeting(x,y,oBird)
{
	var who = instance_place(x,y,oBird);
	with (instance_create_layer(who.x,who.y-3,"Characters",oBirdFall))
	{
		vsp= 2;
		hsp= 2*sign(other.image_xscale);
	}
	var plax= side*12;
	instance_create_layer(self.x+plax,self.y+10,"BefEdge",oSlash);
	instance_destroy(who);
}

// Bat object
if place_meeting(x,y,oBat)
{
	var who = instance_place(x,y,oBat);
	with (instance_create_layer(who.x,who.y-3,"Characters",oBatD))
		{
		vsp= 0;
		hsp= 3*side;
		if (sign(hsp) !=0) image_xscale = sign(hsp)*0.75;
		}
	instance_destroy(who);
	var plax= side*12;
	instance_create_layer(self.x+plax,self.y+10,"BefEdge",oSlash);
}
// Butterfly object
if place_meeting(x,y,oButterfly)
{
	var who = instance_place(x,y,oButterfly);

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
}