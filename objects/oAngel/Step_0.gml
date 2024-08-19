/// @desc
if instance_exists(oPlayerGod) {if (alarm_get(3)==-1) {alarm[3]=60;}}


// always on visual
	if (rotup)
	{
	if (rot<60)	{rot+=rotspeed;} else {rotup=false;}
	} else {
	if (rot>-60) {rot-=rotspeed;} else {rotup=true;}	
	}
		xxx=x+lengthdir_x(5,imangle);
		yyy=y+lengthdir_y(5,imangle);
		if (imangle<360) {imangle+=3;} else {imangle=0;}
		// eye placement
		if instance_exists(mytar){
			var dir=point_direction(x,y,mytar.x,mytar.y);
				xx=xxx+lengthdir_x(3,dir);
				yy=yyy+lengthdir_y(3,dir);
			} else {
			xx=xxx;
			yy=yyy;
			}

	// self tilt based on target direction
	if (direction>90) && (direction<270)
	{
	if (tilt<20) {tilt+=2;}	
	} else {
	if (tilt>-20) {tilt-=2;}	
	} image_angle=0+tilt;
	
// ONLY WHEN FLY ON
if (current_state==angelstates.fly)
{	
	if (point_distance(x,y,targetx,targety)>30)
	{
	if (speeder<6) {speeder+=0.2;}
	move_towards_point(targetx,targety,speeder); 
	} else {
		if (speed>=0) {if (alarm_get(0)==-1) {alarm[0]=irandom_range(30,90);}} // alarm 0 give new target location
		if (speed>0){speeder-=0.3;} speeder=clamp(speeder,0,5);speed=speeder;}
}

if (current_state==angelstates.summon)
{
	if (summonrate<100) {summonrate+=4;summonratemini=summonrate*0.01;
		sumwid=10-summonratemini*10;
		} else {
			alarm[1]=irandom_range(230,300);
			play_sound(snAngel,false);
		with (instance_create_layer(x,y,layer,oAngelLaser))
		{
			image_blend=c_aqua;
			image_angle=other.summondirection;
			direction=other.summondirection;
			speed=20;
		}
		current_state=angelstates.fly;
	}
}