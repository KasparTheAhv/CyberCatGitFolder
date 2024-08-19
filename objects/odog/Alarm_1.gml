if (eating) {exit;}
if (treatment) {exit;}



if instance_exists(oPlayer)
{
if (oPlayer.x<self.x) {hsp=-2; image_xscale=-0.7;} else {hsp=2; image_xscale=0.7;}
if (chase){alarm[1]=irandom_range(15,40);}
} else {
if instance_exists(oFollowPlayer)
{
if (oFollowPlayer.x<self.x) {hsp=-2; image_xscale=-0.7;} else {hsp=2; image_xscale=0.7;}
if (chase){alarm[1]=irandom_range(50,100);}
}
}
