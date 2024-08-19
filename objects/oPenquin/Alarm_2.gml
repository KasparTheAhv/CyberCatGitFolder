/// @desc Attack
if !(attack)
{
hsp=0;
if instance_exists(oFollowPlayer) {tar=oFollowPlayer;}
if instance_exists(oPlayer) {tar=oPlayer;}
if instance_exists(oPlayerAttack) {tar=oPlayerAttack;}
if instance_exists(oPlayerGod) {tar=oPlayerGod;}
image_xscale=0.75*sign(tar.x-self.x);
side=sign(image_xscale);	
if (side==1) {rot=1;} else {rot=359;}
attack=true;
sprite_index=sPenquinD;
alarm[2]=90;

} else {
sprite_index=sPenquin;	
attack=false;
if instance_exists(oPlayerGod) {alarm[5]=1;}else{alarm[0]=1;}
}


