/// @desc
with (oPlayer)
{
	
if (distance_to_point(mouse_x,mouse_y)<40)
{
	if (sprite_index==global.sPlayerA) {exit;}
	
	if (keyheld)
	{
	var who = instance_nearest(x,y,oKey);
	if (who==noone) {exit;}
	
	with(who)
	{
	var ohus = tilemap_get_at_pixel(oPlayer.tilemap,x,y+10);
	var ohus2 = tilemap_get_at_pixel(oPlayer.tilemap2,x,y+10);
	if (ohus==0) && (ohus2==0)  {exit;}
	var seinas = tilemap_get_at_pixel(oPlayer.tilemap,x,y);
	if (seinas!=0) {exit;}
	if (held) {var hoiab=true;} else {hoiab=false;}	
	}
	if (seinas) {exit;}
	if (hoiab)
	{
	who.held=false;
	who.x=oPlayer.x+(26*sign(image_xscale));
	who.y=oPlayer.y+8;
	canatk=true;
	keyheld=false;
	} else {exit;}
	}
}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}