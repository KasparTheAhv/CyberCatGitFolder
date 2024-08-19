/// @desc
muutuja=global.GUI*70;
self.y=round(testGuiH*0.3)+muutuja;
scale=(1+2*global.GUI)*scaler;
image_xscale=scale;
image_yscale=scale;
draw_sprite_ext(sPause,11,x,y,image_xscale,image_yscale,0,image_blend,1);


if (settingsOn==false) {exit;}

if (global.isAndroid)
{
	draw_sprite_ext(JSback,0,jsX,jsY,1*global.scaler,1*global.scaler,0,c_white,global.AL);
	draw_sprite_ext(JSnorm,0,jsX,jsY,1*global.scaler,1*global.scaler,0,c_white,global.AL);
}

draw_set_color(c_black);
draw_set_alpha(0.7);
draw_rectangle(rectX1-50,rectstartY,rectX2+50,setting5y+50,false);
draw_set_color(c_white);
draw_set_alpha(1);
draw_rectangle(rectX1-50,rectstartY,rectX2+50,setting5y+50,true);

scribble(textscale+setting1name).draw(textX,setting1y);
scribble(textscale+setting2name).draw(textX,setting2y);
scribble(textscale+setting3name).draw(textX,setting3y);
scribble(textscale+setting4name).draw(textX,setting4y);
draw_sprite_ext(sGFXButtons,set1index,buttonX,setting1y,scale,scale,0,c_white,1);
draw_sprite_ext(sGFXButtons,set2index,buttonX,setting2y,scale,scale,0,c_white,1);
draw_sprite_ext(sGFXButtons,set3index,buttonX,setting3y,scale,scale,0,c_white,1);
draw_sprite_ext(sGFXButtons,set4index,buttonX,setting4y,scale,scale,0,c_white,1);
if (showGFX5)
{
scribble(textscale+setting5name).draw(textX,setting5y);
draw_sprite_ext(sGFXButtons,set5index,buttonX,setting5y,scale*1,scale*1,0,c_white,1);
scribble(textscale+string(global.GFX5)).draw(buttonX-10,setting5y);
}

scribble(textscale2+string(curFPS)+" FPS").draw(fpsX,fpsY);


