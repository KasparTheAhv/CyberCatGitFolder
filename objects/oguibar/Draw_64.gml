/// @description Insert description here
// You can write your code in this editor
if (joonista)
{
draw_cool_healthbar();
draw_cool_cnbar();
}

if (joonistatasks)
{
	if (global.drawTasks)
	{
	// rectangle osa		
	draw_sprite_ext(sTaskBord,0,rectx1,recty1,rectoScaleX,rectoScaleY,0,c_white,taskalpha);
	draw_sprite_ext(sArrow,2,rectx2-30,recty1+40,ascale,ascale,270,arrowCol,taskalpha);
	// text osa
	scribble(task0scri).draw(xx3,yyy2);
	if (tasks>0) {scribble(task1scri).line_spacing("150%").draw(xx3,yyy2);}
	if (tasks>1) {scribble(task2scri).line_spacing("150%").draw(xx3,yyy2);}
	if (tasks>2) {scribble(task3scri).line_spacing("150%").draw(xx3,yyy2);}
	} else {
	draw_sprite_ext(sArrow,2,rectx1,recty1,ascale,ascale,90,arrowCol,taskalpha);
	}
}