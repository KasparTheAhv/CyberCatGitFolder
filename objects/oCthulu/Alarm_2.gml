/// @desc make fountains
var fony = irandom_range(1480,1520);
var minx = oFollowPlayer.x-500;
var fonx1 = minx-50+irandom_range(70,150);
var fonx2 = fonx1+irandom_range(70,250);
var fonx3 = fonx2+irandom_range(70,250);
var fonx4 = fonx3+irandom_range(70,250);
var fonx4 = fonx3+irandom_range(70,250);
var fonx5 = fonx4+irandom_range(70,250);
instance_create_layer(fonx1,fony,"Characters",oFountain);
instance_create_layer(fonx2,fony,"Characters",oFountain);
instance_create_layer(fonx3,fony,"Characters",oFountain);
instance_create_layer(fonx4,fony,"Characters",oFountain);
instance_create_layer(fonx5,fony,"Characters",oFountain);
alarm[3]=220;
alarm[6]=430;
alarm[0]=irandom_range(160,220);