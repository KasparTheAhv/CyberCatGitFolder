/// @desc stucker
stucker=0;

if (eaten)
{
if (eattimer>0) {eattimer-=1; alarm[11]=1;} else {eaten=false;exit;}
}
