locker=false;
play_sound(snPulse,true);
with (oBirdBoss)
{
go=false;flipper=1;hspeed=0;vspeed=0;speed=3;image_speed=1;canatk=false;image_angle=0;
		xMod=irandom_range(-40,40);
		yMod=irandom_range(0,20);
		state=birdstate.fly;
}