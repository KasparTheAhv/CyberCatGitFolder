/// @desc
if instance_exists(oPlayer)
{
if (point_distance(x,y,oPlayer.x,oPlayer.y)<60)
	{
	instance_create_layer(oPlayer.x,oPlayer.y,"Train",oNippy);
	instance_destroy(self);
	oGUIBAR.hp+=10;
	}
}