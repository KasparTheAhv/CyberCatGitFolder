if !(drawtime) {exit;}

draw_pie(guix,guiy,pieseconds,600,c_white,50,1);
scr_circle_outline(guix,guiy,50,2,c_gray)
draw_circle(guix,guiy,40,false);
scribble(string(textscale)+"[fOrbitronOut][fa_center][fa_middle]"+string(seconds)).draw(guix+1,guiy+3);


