/// @desc

if instance_exists(oText) {alarm[10]=60; exit;}

if instance_exists(oPlayer)
{
var who = instance_nearest(x,y,oPlayer);
	if (who.sprite_index==sPlayerAFK)
	{
		self.sprite_index=sPixelCat2; image_speed=1;
	} else {self.sprite_index=sPixelCat;image_speed=0;}
}


alarm[10]=60;