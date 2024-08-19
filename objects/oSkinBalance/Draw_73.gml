if (held>0)
{
draw_set_color(c_black);
draw_roundrect_ext(rectStartX,y,rectStartX-(rectW*held*0.01),y+(rectH*held*0.01),26,26,false);
draw_set_color(c_white);
draw_roundrect_ext(rectStartX,y,rectStartX-(rectW*held*0.01),y+(rectH*held*0.01),26,26,true);
}

if (held2>0)
{
scribble(string(textscale)+string(textalpha)+"[fa_center][fa_middle]"+string(txt)).draw(textX,textY);
}