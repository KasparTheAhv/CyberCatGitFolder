if !(move) {vsp+=grv;vsp=clamp(vsp,-6,6);}

// Horistontal collision (ground)

if (tilemap_get_at_pixel(tilemap,x+5,bbox_bottom)!=0) or (tilemap_get_at_pixel(tilemap,x-5,bbox_bottom)!=0)
{
	hsp=0;
	move=false;
	hspeed=0;
}
x += floor(hsp);
if !(colblock)
{
// Vertical collision (ground)
if (tilemap_get_at_pixel(tilemap,x,bbox_bottom+vsp)!=0) or (tilemap_get_at_pixel(tilemap,x,bbox_bottom+vsp)!=0)
{
		yyy=tilemap_get_cell_y_at_pixel(tilemap,x,bbox_bottom+vsp)*32-1;
        if (vsp>0){y=yyy;}
        vsp=0; hsp=0;
		move=false;
	if !(attacking) {image_index=0;} hsp=0;
} 

// Change player Y according to VSP
y += floor(vsp);
}
if (jump) {
	move=true;
	jump=false;
	colblock=true;
	alarm[10]=10;
    curvePosition = 0;
    xstart = x;
    ystart = y;
    distance = target_x - x; // Please not that this will be a negative number when jumping to the left
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
	if (curvePosition==1) {move=false;vsp=round(cKordaja*10);}
    // Store a reference to your animation curve
    var _curveStruct = animcurve_get(cur_jump);

    // Interpret channel "x"
    var _channel = animcurve_get_channel(_curveStruct, "x");
    var _value = animcurve_channel_evaluate(_channel, curvePosition);
    x = xstart + (_value * distance);


    // Interpret channel "y"
    var _channel = animcurve_get_channel(_curveStruct, "y");
    var _value = animcurve_channel_evaluate(_channel, curvePosition);
    y = ystart + sign(distance) * (_value * distance * 0.4); // sign(distance) accounts for jumping to the left
} else {
	if (vsp>2) {image_index=1;}}



