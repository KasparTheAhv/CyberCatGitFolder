/// @desc change desired dist
if (hidden) {


var camx = camera_get_view_x(view_camera[0]);
var camy = camera_get_view_y(view_camera[0]);


var camw=camera_get_view_width(view_camera[0]);
var camh=camera_get_view_height(view_camera[0]);
desireddist=round(camw*0.51);
var ycenter=camy+(camh*0.5);
var xcenter=camx+(camw*0.5);

var leidis=false;
var randomside=choose(1,-1);
var xtosearch=x+(randomside*desireddist);

for (var i = 0; i <= 10; i++)
		{
			var extra=11*i;
			if (tilemap_get_at_pixel(tilemap,xcenter+xtosearch,ycenter+20-extra)==0) && (tilemap_get_at_pixel(tilemap,xcenter+xtosearch,ycenter+20+32-extra)!=0)
			{
			leidis=true;
			hidden=false;
			oClown.x=xcenter+xtosearch;
			oClown.y=ycenter+20-extra-32;
			break;
			}	
		}
		
if (leidis==false) {alarm[0]=2; exit;}
alarm[0]=30;
} else {
var who=oFollowPlayer;
if instance_exists(oPlayer) {who=oPlayer;}
if instance_exists(oPlayerFall) {who=oPlayerFall;}
if instance_exists(oPlayerAttack) {who=oPlayerAttack;}
if (point_distance(x,y,who.x,who.y)<50)
{
	desireddist-=20;
	SlideTransition(TRANS_MODE.GOTO,room);
}
if (desireddist>50) {desireddist-=20;}
	

		
alarm[0]=120;	
}
