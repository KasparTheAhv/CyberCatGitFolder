/// @desc reapply shield / speed boost
with (oPlayer)
{
slow=1.5;
jumpamp=1.2;
bulletshield=true;
}
if instance_exists(oPlayerFall) {alarm[4]=1;exit;}

alarm[5]=1;