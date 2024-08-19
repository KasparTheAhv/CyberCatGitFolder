/// @desc change side random


alarm[1]=irandom_range(140,600);
if !(started) {exit;}

hsp=hsp*-1;
if (sign(hsp)==1) {leg_xscale=2;} else {leg_xscale=-1;}