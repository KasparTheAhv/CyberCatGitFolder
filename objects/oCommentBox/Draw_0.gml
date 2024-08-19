/// @desc
if (onscreen)
{
draw_self();
draw_sprite_ext(spriteused,commentRoom,x,y,scale,image_yscale,0,c_white,1);
scribble(wholeuser).draw(userX,userY);
scribble(wholecom).wrap(maxWidth,-1).draw(commentX,commentY);
}