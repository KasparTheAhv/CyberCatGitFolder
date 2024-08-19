///@desc Turn what player object into god
if instance_exists(oPlayer) {oPlayer.alarm[11]=1;exit;}
if instance_exists(oPlayerAttack) {
	oPlayerAttack.alarm[9]=-1;
	oPlayerAttack.alarm[8]=-1;
	oPlayerAttack.alarm[11]=1;exit;
	}
if instance_exists(oPlayerFall) {oPlayerFall.alarm[11]=1;exit;}
alarm[3]=1;
