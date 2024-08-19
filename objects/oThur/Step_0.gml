vsp+=grv;vsp=clamp(vsp,-6,6);

if (jumping)
{
if (jumper) {
	move=true;
	jumper=false;
    curvePosition = 0;
    xstart = x;
    ystart = y;
    x_distance = target_x - x; // Please not that this will be a negative number when jumping to the left
	y_targ= target_y;
	cKordaja=0.2+(distance*0.001*sign(distance));
	cKordaja=clamp(cKordaja,0.2,0.8);
    curveSpeed = abs(1 / (distance * 0.1));
    // This adjusts the curve interpolation based on distance of jump
    // This can not be a negative number, so you must use abs in some way if distance is allowed to be negative
    // curveSpeed = 1 / (abs(distance) * 0.1); would do the same thing
}

if (move) {
	image_index=1;
    // Move curve positoin
    curvePosition += (curveSpeed*cKordaja);
    curvePosition = clamp(curvePosition, 0, 1); // I clamped it but it's not critical to do so
	if (curvePosition==1) {jump=false;jumping=false;move=false;vsp=round(cKordaja*10);alarm[0]=1;}
    // Store a reference to your animation curve
    var _curveStruct = animcurve_get(cur_jump);

    // Interpret channel "x"
    var _channel = animcurve_get_channel(_curveStruct, "x");
    var _value = animcurve_channel_evaluate(_channel, curvePosition);
    x = xstart + (_value * x_distance);


    // Interpret channel "y"
    var _channel = animcurve_get_channel(_curveStruct, "y");
    var _value = animcurve_channel_evaluate(_channel, curvePosition);
	y = lerp(ystart, y_targ, curvePosition) + ( sign(distance) * (_value * distance * 0.25) ); // sign(distance) accounts for jumping to the left
} else {
	if (vsp>2) {image_index=1;}}
exit;
}
// Vertical collision (ground)
bbox_side=bbox_bottom;
if (tilemap_get_at_pixel(tilemap,x-3,bbox_side+vsp)!=0) or (tilemap_get_at_pixel(tilemap,x+3,bbox_side+vsp)!=0)
{
		yyy=tilemap_get_cell_y_at_pixel(tilemap,x,bbox_side+vsp)*32-1;
        if (vsp>0){y=yyy;}
        vsp=0;
		move=false;
}
// Change player Y according to VSP
y += floor(vsp);


// Horistontal collision (ground)
if (tilemap_get_at_pixel(tilemap,x+(32*sign(hsp)),bbox_bottom)!=0) 
{
lasthsp=hsp;
hsp=0;
if !(jump)
{
jump=true;
alarm[2]=-1;
alarm[3]=-1;
alarm[0]=-1;
alarm[1]=1;
}
}
x += floor(hsp);

