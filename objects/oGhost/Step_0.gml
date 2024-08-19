/// @desc

if (state!=0)
{
	var tar=noone;
	if instance_exists(oPlayer)
	{
		var tar=oPlayer;
	}	
	if instance_exists(oPlayerAttack)
	{
		var tar=oPlayerAttack;
	}
	if instance_exists(oPlayerFall)
	{
		var tar=oPlayerFall;
	}

	if (tar!=noone)
	{
		if (tar.x>self.x) {image_xscale=1;} else {image_xscale=-1;}
		if (point_distance(x,y,tar.x,tar.y)>100) {
			
				if (y<434)
				{
				move_towards_point(tar.x,tar.y,2);
				} else {hspeed=0;vspeed=0;}
			}  else {hspeed=0;vspeed=0;}
	}
	
}



xx=x+lengthdir_x(3,imangle);
yy=y+lengthdir_y(3,imangle);
if (imangle<360) {imangle+=3;} else {imangle=0;}

lampX=xx+sign(image_xscale)*(17);
lampY=yy;

// lamp

if (hspeed==0) {if (lampAng>360){lampAng-=1;} else {lampAng+=1;} }
if (hspeed>0) {	if (lampAng>345) {lampAng-=0.5;}} 
if (hspeed<0) {if (lampAng<375)  {lampAng+=0.5;}}

//
if (state==0)
{
hspeed=-1;
vspeed=-0.5;

if (self.x<-32) {instance_destroy();}


}

if (state==3) && !(instance_exists(oTextFloat))
{
	if (image_alpha>0){image_alpha-=0.01;} else {instance_destroy();}
	move_towards_point(oClickedEvent.x,oClickedEvent.y,1);
}