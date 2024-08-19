/// @desc take bullet immune off and speed
with (oPlayer)
{
slow=1;
bulletshield=false;
jumpamp=1;
}
instance_destroy(oShield);
self.alarm[5]=-1;
if !(instance_exists(oPlayer)){ alarm[4]=1;}