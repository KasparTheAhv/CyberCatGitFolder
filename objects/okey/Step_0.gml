

if (held)
{
	var howmuch=0;
	if instance_exists(oPlayer)
	{
	self.depth=oPlayer.depth-2;
		
	if (oPlayer.sprite_index==global.sPlayerAFK) {howmuch=13;

		} else {
		
	inde=oPlayer.image_index;
	if (inde>=0) {howmuch=8;}
	if (inde>=1) {howmuch=7;}
	if (inde>=2) {howmuch=5;}
	if (inde>=3) {howmuch=3;}
	if (inde>=4) {howmuch=3;}
	if (inde>=5) {howmuch=4;}
	if (inde>=6) {howmuch=6;}
	if (inde>=7) {howmuch=9;}
	if (inde>=8) {howmuch=8;}
			}
	
	self.x=oPlayer.x+(23*oPlayer.image_xscale);
	
	if (floor(oPlayer.vsp)==0)
	{
	self.y=oPlayer.y+howmuch;
	} else {
	var jumpchange=oPlayer.vsp*3;
	jumpchange=clamp(jumpchange,-10,6);
	self.y=oPlayer.y+howmuch+jumpchange;
	}
	
	image_xscale=sign(oPlayer.image_xscale);
	if (image_xscale==1) {image_angle=300;} else {image_angle=60;}
	} else {
	held=false;
	}
	

	
	
} else { // NOT HELD
	if (tilemap_get_at_pixel(tmap,x,y+4)!=0){vsp=0;exit;}
	if (tilemap_get_at_pixel(tmap2,x,y+6)!=0){vsp=0;exit;}
	vsp+=grv;
	vsp=clamp(vsp,-8,8);
	self.y+=vsp;
	image_angle=0;
}