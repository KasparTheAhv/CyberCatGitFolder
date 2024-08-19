target=noone;
if instance_exists(oPlayer) {target=oPlayer;}
if instance_exists(oPlayerAttack) {target=oPlayerAttack;}
if instance_exists(oPlayerFall) {target=oPlayerFall;}
if instance_exists(oPlayerGod) {target=oPlayerGod;}
if instance_exists(oPlayerMilk) {target=oPlayerMilk;}
if (target!=noone)
{
self.x=target.x;
self.y=target.y;
}
alarm[0]=5;



