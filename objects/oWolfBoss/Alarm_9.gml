/// @desc START ATTACK

var who= oFollowPlayer;
if instance_exists(oPlayer) {var who= oPlayer;}
if instance_exists(oPlayerAttack) {var who= oPlayerAttack;}	
// vali suund kuhu chaseda

if (who.x<self.x) {var side=-1;} else {var side=1;} image_xscale=1*sign(side);

current_state=wolfstates.attack;
sprite_index=sWolfATK;
image_speed=0;
image_index=0;
hsp=0;
alarm[2]=1;
