/// @description Insert description here
// You can write your code in this editor


if (shooting==false)
{
	if (instance_exists(oPlayer))
	{
		if (point_distance(x+20,y,oPlayer.x,oPlayer.y)<50)
		{
		instance_create_layer(x+80,y,"BefEdge",oFlakSihik);
		index=3;
		shooting=true;
		instance_destroy(oPlayer);
			with (oPigMono)
			{
			instance_create_layer(x,y,"BefEdge",oCoinShield);
			}
		}

	} 

} else {
	shooting=false;
	index=2;
	instance_destroy(oFlakSihik);
instance_create_layer(x,y,"Characters",oPlayer);	
	with(oCoinShield) {kustu=true;}
}

