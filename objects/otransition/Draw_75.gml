/// @description Insert description here
// You can write your code in this editor
if (mode!=TRANS_MODE.OFF)
{
		draw_sprite_ext(sTransition,0,xx1,yy,picXscale,picYscale,0,c_white,1);
		draw_sprite_ext(sTransition,1,xx2,yy,picXscale,picYscale,0,c_white,1);
		if (showtext) {scribble(string(alltext)).wrap(maxWidth,-1).draw(xx,yy);}
}
