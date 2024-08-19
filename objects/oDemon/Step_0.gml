/// @desc
var who = oFollowPlayer;
if instance_exists(oPlayer) {who=oPlayer;}
if instance_exists(oPlayerAttack) {who=oPlayerAttack;}
if instance_exists(oPlayerGod) {who=oPlayerGod; extra=1.5; } else {extra=0;}

var dist = point_distance(x,y,who.x,who.y);

xx=x+lengthdir_x(0,imangle);
yy=y+lengthdir_y(2,imangle);
if (imangle<360) {imangle+=3;} else {imangle=0;}

// what to do depending on state
if (cur_state==demonstates.chase)
{
	sprite_index=sDemon;
	with (oDemonSword) {spin=false;}
	if instance_exists(who) {
			if (dist>60)
			{
			move_towards_point(who.x,who.y,mspeed+extra);
			}
		}
} 
if (cur_state==demonstates.swing)
{
	sprite_index=sDemonATK;
	with (oDemonSword) {spin=true;}
	if instance_exists(who) {
		if (dist>60)
			{
			move_towards_point(who.x,who.y,mspeed+extra);
			}
		}
}

if (cur_state!=demonstates.stay)
{
	if (direction>90) && (direction<270)
	{
		paremale=false;
		with (oDemonSword) {paremale=false;}
		if (demonangle<375) {demonangle+=1;}
	} else {
		paremale=true;
		with (oDemonSword) {paremale=true;}
		if (demonangle>345) {demonangle-=1;}
	}
}

if (die)
{
hspeed=0;
vspeed=0;
if (image_alpha>0) {image_alpha-=0.05;} else {instance_destroy();}
}

