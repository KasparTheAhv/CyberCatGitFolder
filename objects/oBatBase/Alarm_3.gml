/// @desc Spawn 2 squir at once
repeat(3)
{
mybirds+=1;	
with (instance_create_layer(x,y,"Characters",oBat))
		{
			activated=true;
		sprite_index=sBatFly; image_speed=1; 
			whatbase=other.id;
		}
}