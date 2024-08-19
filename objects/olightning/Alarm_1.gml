/// @desc Create disc
if instance_exists(oPlayer){target=oPlayer;}
if instance_exists(oPlayerFall){target=oPlayerFall;}
if instance_exists(oPlayerAttack){target=oPlayerAttack;}
if instance_exists(oPlayerGod){target=oPlayerGod;}
if !instance_exists(oKetas)
{
instance_create_layer(target.x,target.y,"Particles",oKetas);
}
instance_destroy(self);