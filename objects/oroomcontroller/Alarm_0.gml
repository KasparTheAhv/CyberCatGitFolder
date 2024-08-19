///@desc nippy mover
if instance_exists(oNippy) 
{
if (swipdir) 
{
if (swiper<10) {swiper+=0.5;} else {swipdir=false;}
}
else
{
if (swiper>-10) {swiper-=0.5;} else {swipdir=true;}	
}
with(oNippy) {y=other.swiper+algney;}
alarm[0]=1;
} else {exit;}