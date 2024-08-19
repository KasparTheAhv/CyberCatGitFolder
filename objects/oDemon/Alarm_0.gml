/// @desc
var who = oFollowPlayer;
if instance_exists(oPlayer) {who=oPlayer;}
if instance_exists(oPlayerAttack) {who=oPlayerAttack;}

if (cur_state!=demonstates.chase) {cur_state=demonstates.chase;} 

if (point_distance(x,y,who.x,who.y)<120) && !(coolingdown)
{
cur_state=demonstates.swing;
coolingdown=true;
alarm[0]=200;
alarm[1]=400;
exit;
}

alarm[0]=30;