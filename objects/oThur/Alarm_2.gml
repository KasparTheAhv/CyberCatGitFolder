/// @desc Attack
if !(attack)
{
hsp=0;
if instance_exists(oLightning) {alarm[0]=1; exit;}
if instance_exists(oKetas)	   {alarm[0]=1; exit;}
if instance_exists(oPlayerGod) {alarm[0]=1; exit;}
if instance_exists(oFollowPlayer) {tar=oFollowPlayer;}
if instance_exists(oPlayer) {tar=oPlayer;}
if instance_exists(oPlayerAttack) {tar=oPlayerAttack;}
image_xscale=2*sign(tar.x-self.x);   // 9 kaugus 21 korgus
var xx = x + 18*sign(image_xscale);
var yy = y - 42;
instance_create_layer(xx,yy,"Particles",oThurSpark);
attack=true;
sprite_index=sThurD;
alarm[2]=30;

} else {
sprite_index=sThur;	
attack=false;
alarm[0]=1;
}


