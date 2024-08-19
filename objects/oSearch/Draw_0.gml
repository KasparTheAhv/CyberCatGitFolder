/// @desc
draw_self();

draw_set_color(c_black);
draw_rectangle(-1,-1,room_width+1,rectY,false);
draw_set_color(c_white);
draw_rectangle(-1,-1,room_width+1,rectY,true);
draw_set_halign(fa_middle);
draw_set_valign(fa_center);

scribble(wholetext1+string(message)).draw(textx,rectY-textYtarget);
if (maxfindings>0) && (message!="") {
scribble(wholetext2+string(curfinding)+" / "+string(maxfindings)).draw(textx2,rectY-textYtarget);
} 