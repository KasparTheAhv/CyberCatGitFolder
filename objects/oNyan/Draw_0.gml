if (working==true)
{
draw_sprite_ext(sWhiteCenter,0,xx,rectyy,rescaleW,rescaleH,0,c_black,1);
draw_sprite_ext(sComp,1,xx,yy,scaleW,scaleH,0,c_white,1);
}

if (menuOn)
{
draw_sprite_ext(sPlayerGod,image_index,xx-pisuy-pisuy,yy+(pisuy*0.5),1,1,0,c_white,menualpha);
draw_sprite_ext(sGun,0,xx-pisuy-pisuy,yy+(pisuy*0.5)-5,1,1,0,c_white,menualpha);
}

/// mangu vali
//if (keyboard==2)
//{
//draw_rectangle(xx-rexmod,yy-reymod,xx+rexmod,yy+reymod2,true);
//}
//
if (drawreward)
{
	draw_sprite_ext(sNippy,1,xx,yy+25,2,2,0,c_white,rewardalpha);
}

