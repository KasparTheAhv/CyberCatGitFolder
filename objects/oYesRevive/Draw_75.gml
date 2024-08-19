draw_set_color($101010);
draw_set_alpha(0.92);
draw_roundrect_ext(xx-mymaxerW,yy-mymaxerH,xx+mymaxerW,yy+mymaxerH,100,100,false);
draw_set_color(c_white);
draw_roundrect_ext(xx-mymaxerW,yy-mymaxerH,xx+mymaxerW,yy+mymaxerH,100,100,true);
draw_set_alpha(1);
draw_self();


scribble(textwhole1).draw(x,y);

if instance_exists(oNo)
{
scribble(textwhole2).draw(oNo.x,oNo.y);
}
scribble(textwhole3).draw(questionx,questiony);