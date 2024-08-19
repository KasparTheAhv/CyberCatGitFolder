/// @desc attacking controller
// attacking
var who = oFollowPlayer;
if instance_exists(oPlayer) {who = oPlayer;}
if instance_exists(oPlayerAttack) {who = oPlayerAttack;}
if instance_exists(oPlayerGod) {who = oPlayerGod;}


if (point_distance(x,y,who.x,who.y)<300)
{
	if (sprite_index!=sMJAtk) {sprite_index=sMJAtk;}
	if (image_index<5) {image_index+=1;} else {image_index=0;}


var dir = point_direction(x,y-16,who.x,who.y);

if (alarm_get(2)==-1) {alarm[2]=1;}

if (dir>90) && (dir<270) {image_xscale=2;} else {image_xscale=-2;}

if (image_index==5) {
	
	with (instance_create_layer(x-(5*image_xscale),y-16,"Gun",oBulletNose))
	{
	alarm[0]=140; speed=11; direction=dir+irandom_range(-1,1);
	}
	
}




} else {if (sprite_index!=sMJ) {sprite_index=sMJ;image_index=0;}}

if (image_index==0) && (sprite_index!=sMJ) {alarm[2]=45;} else {
alarm[2]=5;}

