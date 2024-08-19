if (rectscale!=1) {exit;}

yydisc=rH*0.75;
var str = "Discovered: "+string(discovery)+"%"; //(xx,rH*0.75);
hei = string_height(str)*0.5;
wid = string_width(str)*0.5;

if (point_in_rectangle(mouse_x, mouse_y, xx -wid, yydisc - hei, xx + wid, yydisc + hei)) 
{
	extrastats=true;
} else {exit;}
