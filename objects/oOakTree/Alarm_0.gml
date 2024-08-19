/// @desc


var dir= irandom_range(1,359);
var dist = irandom_range(0,35);
var xx = x+lengthdir_x(dist,dir);
var yy = y+lengthdir_y(dist,dir);
instance_create_layer(xx,yy,"Gun",oPotato);
alarm[0]=irandom_range(60,90);


