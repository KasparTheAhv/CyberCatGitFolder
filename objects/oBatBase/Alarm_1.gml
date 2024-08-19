/// @desc Spawn bird
// You can write your code in this editor
if (activated)
{
	if instance_exists(oPlayerGod)
	{
		if (mybirds<maxbirds+6)
		{
			mybirds+=1;
	with (instance_create_layer(x,y,"Characters",oBat))
		{
			activated=true;
		sprite_index=sBatFly; image_speed=1; 
			whatbase=other.id;
		} alarm[1]=choose(20,40,70); exit;
		}
		
	} else {	
		if (mybirds<maxbirds)
		{
			mybirds+=1;
			with (instance_create_layer(x,y,"Characters",oBat))
			{
				activated=true;
		sprite_index=sBatFly; image_speed=1; 
				whatbase=other.id;
			}
		}
	}
} else if (instance_exists(oPlayerGod))
	{
		if (mybirds<maxbirds+7)
		{
			mybirds+=1;
	with (instance_create_layer(x,y,"Characters",oBat))
		{
			activated=true;
		sprite_index=sBatFly; image_speed=1; 
			whatbase=other.id;
		} alarm[1]=choose(20,40,70); exit;
		}
	}
alarm[1]=choose(170,150,200);