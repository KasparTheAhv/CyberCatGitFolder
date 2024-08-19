draw_set_alpha(0.95);
draw_set_color(c_black);
draw_roundrect_ext(xx-newwid,yy-newhei,xx+newwid,yy+newhei,60,60,false);
draw_set_color(c_white);
draw_roundrect_ext(xx-newwid,yy-newhei,xx+newwid,yy+newhei,60,60,true);



//
if (watchad==false)
{
draw_line(xx-newwid,yy-newhei+30,xx+newwid,yy-newhei+30);

scribble(textwholemid+"Room"+string(actuallevel)).draw(xx,yy-newhei+15);

if (showtime)
{
scribble(textwholeleft+"Fastest run: "+totalcolor+string(total)).draw(xx-70,rH*0.65);
if (cloudLeaderData) {
draw_sprite_ext(sLeader,loadInd,rW*0.95,(rH*0.3),1,1,0,c_white,textscaler*2);
}

} else {
scribble(textwholeleft+"Fastest run: ").draw(xx-70,rH*0.65); 
draw_sprite_ext(sLoading,loadInd,xx+43,(rH*0.65),rectscale,rectscale,0,c_white,textscaler*2);
}



scribble(textwholeleft+"Discovered: "+disccolor+string(discovery)+"%").draw(xx-70,rH*0.75);
draw_sprite_ext(sLevelImages,0,xx,piclocation,5*textscaler,textscaler*5,0,c_white,1);
draw_sprite_ext(sLevelImages,levelnr,xx,piclocation,5*textscaler,textscaler*5,0,c_white,1);
draw_self();

if (exsrectscaler>0) {
draw_sprite_ext(sLevelImages,0,xx,piclocation,exsrectscaler*2,exsrectscaler*2,0,c_white,1);
scribble(statsscale+"Notes:\n"+notecolor+string(discoverynotes)).draw(xx,piclocation*0.85);
scribble(statsscale+"Secrets:\n"+eggcolor+string(discoveryeggs)).draw(xx,piclocation*1.15);
}

if (disclearned==0) && (rectscale>0.99) {draw_sprite_ext(sClickHere,0,xx+50,rH*0.75+ymuutuja,1,1,0,c_white,0.8);}
} else { //if watching ad then this draw event	
draw_set_alpha(1);
draw_self();
draw_sprite_ext(sLevelImages,0,xx,piclocation,5*textscaler,5*textscaler,0,c_white,1);
draw_sprite_ext(sAd,adindex,xx,piclocation,5*textscaler,5*textscaler,0,c_white,1);
scribble(string(textscale2)+color+adtext+totalcolor+string(total)).draw(xx,rH*0.7);
}