/// @desc move drake


if (cur_state==drakestates.walk)
{
	
	
var who= oFollowPlayer;
if instance_exists(oPlayer) {who=oPlayer;}	
if instance_exists(oPlayerAttack) {who=oPlayerAttack;}	
if instance_exists(oPlayerFall) {who=oPlayerFall;}	
	
if (who.x>self.x) {hsp=2;} else {hsp=-2;}
image_xscale=sign(hsp)*1;	
image_speed=1;
alarm[0]=60;	


}