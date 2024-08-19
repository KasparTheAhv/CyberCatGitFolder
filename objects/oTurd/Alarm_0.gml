/// @desc reset to Stay and alarm next task
cur_state=turdstates.stay;
hsp=0;
vsp=0;

// choose if relocate
if (self.y<oFollowPlayer.y-40)
{
	cur_state=turdstates.relocate;
	if  (x < 850)
	{
	hsp=2; 	
	} else {hsp-=2;}
	exit;
}

// who to target
var player=oFollowPlayer;
if instance_exists(oPlayer) {player=oPlayer;}
if instance_exists(oPlayerAttack) {player=oPlayerAttack;}
if instance_exists(oPlayerFall) {player=oPlayerFall;}
if instance_exists(oPlayerGod) {player=oPlayerGod;}
// if near to attack
if (point_distance(x,0,player.x,0)<35)
{
	if (self.x<player.x) {hsp=2;} else {hsp=-2;}
	var dist = point_distance(0,y,0,player.y);
	var howup = (dist / 45);
	var spd =(-4*howup);
	vsp = clamp(spd,-10,-4);
		cur_state=turdstates.roll; alarm[0]=irandom_range(50*howup,70*howup);
		exit;
} else {
	cur_state=turdstates.roll;
	alarm[0]=irandom_range(10,20);
	if (self.x<player.x) {hsp=1;} else {hsp=-1;}
}




