/// @desc laser setup and activate
vspeed=0;
hspeed=0;
speed=0;

laserRot=450;
laserRotRemain=360;
laserAlpha=0;

		var who = oFollowPlayer;
		if instance_exists(oPlayer) {var who = oPlayer;}
		if instance_exists(oPlayerFall) {var who = oPlayerFall;}
		if instance_exists(oPlayerAttack) {var who = oPlayerAttack;}

if (who.x<self.x) {laserRotParemale=false;} else {laserRotParemale=true;}

laserStart=true;

		var who = oFollowPlayer;
		if instance_exists(oPlayer) {var who = oPlayer;}
		if instance_exists(oPlayerFall) {var who = oPlayerFall;}
		if instance_exists(oPlayerAttack) {var who = oPlayerAttack; }
		// take dist from them
		laserDist=point_distance(who.x,who.y,x,y)+20;
		
		// destination cords
		xx1=x+lengthdir_x(laserDist,laserRot);
		yy1=y+lengthdir_y(laserDist,laserRot);
		// inner monocle
		xx2=x+lengthdir_x(fromInner,laserRot+90);
		yy2=y+lengthdir_y(fromInner,laserRot+90);
		
		xx3=x+lengthdir_x(fromInner,laserRot-90);
		yy3=y+lengthdir_y(fromInner,laserRot-90);
		
alarm[5]=1;


show_debug_message("got in4");