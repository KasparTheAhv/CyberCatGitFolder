/// @desc
if instance_exists(oPlayer)
{
	var nip1=instance_number(oNippy);
	var nip2=instance_number(oNippyStatue);
	
	var nippyleft = 75-oGUIBAR.cn;
	nippyleft=floor(nippyleft/25);
	
	if (point_distance(x,y,oPlayer.x,oPlayer.y)<64) 
	{
		if (nippyleft>0) && (nip1+nip2<nippyleft)
		{
		instance_create_layer(x,y,"BefEdge",oNippyStatue);
		}
	}
}

alarm[0]=60;