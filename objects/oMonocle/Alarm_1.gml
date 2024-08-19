/// @desc wander location
if (current_state==monoclestates.chase) {exit;}
if (current_state==monoclestates.laser) {exit;}

var who=noone;
var dist = irandom_range(160,200);
if instance_exists(oFollowPlayer) {who = instance_nearest(x,y,oFollowPlayer);}
if instance_exists(oPlayer) {who = instance_nearest(x,y,oPlayer);}
if instance_exists(oPlayerFall) {who = instance_nearest(x,y,oPlayerFall);}
if instance_exists(oPlayerAttack) {who = instance_nearest(x,y,oPlayerAttack);}

// find a location near the player
if (section<3) {section+=1;} else {section=0;}


	if (section==0) {var dir = irandom_range(15,45);}
	if (section==1) {var dir = irandom_range(90,135);}
	if (section==2) {var dir = irandom_range(45,90);}
	if (section==3) {var dir = irandom_range(135,165);}


targetx = who.x + lengthdir_x(dist,dir);
targety = who.y+10 + lengthdir_y(dist,dir);

current_state=monoclestates.wander;
