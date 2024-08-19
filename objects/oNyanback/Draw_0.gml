layer = layer_get_id("Comp");

if (gamestarted)
{
draw_set_color(c_black);
draw_rectangle(0,1000,xx-rexmod,yy-reymod,false);
draw_rectangle(xx+rexmod,yy+reymod2,room_width,0,false);
draw_set_color(c_white);
scribble(string(textscale)+"[fOrbitronBigOut][fa_center][fa_middle]"+string(color)+string(count)).draw(xx,yy-reymod+60);	
}


if (menuOn)
{

draw_sprite_ext(sKeyboard,4,xx+(pisuy*0.5),yy+(pisuy*0.5),scaleW,scaleH,0,c_white,oNyan.menualpha);
draw_sprite_ext(sComp,2,xx,yy,scaleW,scaleH,0,c_white,oNyan.menualpha);
}

if (working)
{
draw_sprite_ext(sComp,0,xx,yy,scaleW,scaleH,0,c_white,1);
}

if (keyboard>=1)
{
draw_sprite_ext(sKeyboard,1,keyx1,keyboardy,boardscale,boardscale,0,keydowncol,1);	
draw_sprite_ext(sKeyboard,0,keyx1,keyboardy-pisuty-pisuy,boardscale,boardscale,0,keyupcol,1);
draw_sprite_ext(sKeyboard,2,keyx2,keyboardy,boardscale*1.5,boardscale*1.5,0,keyentercol,1);	
draw_sprite_ext(sKeyboard,3,keyx2,keyboardy-pisuty-pisuy,boardscale,boardscale,0,keybackcol,1);
}

