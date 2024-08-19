/// @desc
if (stage==1)
{
if (self.x>1616) {self.x-=1;} else {stage=2; image_speed=0;image_index=0; alarm[1]=10;}
}

if (stage==3)
{
if (self.x>1572) {self.x-=2;} else {stage=4; image_speed=0;sprite_index=sSnakeMan; image_index=0; alarm[2]=20;}
}