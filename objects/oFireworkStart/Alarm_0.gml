/// @desc


with (oFollowPlayer) {oFollowPlayer.allowedcam=false; target=oFireworkStart;}
with (oPlayer) {immune=true;}
with (oPlayerAttack) {immune=true;}
with (oPlayerGod) {immune=true;}
// middle
with ( instance_create_layer(x,y,"Particles",oFirework))
{
col1=other.partCol1;
col2=other.partCol2;
speeder=0.3;
special=true;
direction=90;
bosssprite=other.bossSPR;
timer=35;
fall=0;
}


// UP 90
with ( instance_create_layer(x,y,"Particles",oFirework))
{
col1=other.partCol1;
col2=other.partCol2;
speeder=4;
direction=90;
timer=25;
fall=0;
}

// DOWN PAREM
with ( instance_create_layer(x,y,"Particles",oFirework))
{
col1=other.partCol1;
col2=other.partCol2;
speeder=3;
direction=316;
timer=25;
fall=1;
}

// DOWN VASAK
with ( instance_create_layer(x,y,"Particles",oFirework))
{
col1=other.partCol1;
col2=other.partCol2;
direction=224;
speeder=3;
timer=25;
fall=2;
}
// UP RIGHT
with ( instance_create_layer(x,y,"Particles",oFirework))
{
col1=other.partCol1;
col2=other.partCol2;
direction=23;
speeder=4;
timer=25;
fall=1;
}
// UP LEFT
with ( instance_create_layer(x,y,"Particles",oFirework))
{
col1=other.partCol1;
col2=other.partCol2;
direction=157;
timer=25;
speeder=4;
fall=2;
}



instance_destroy(self);