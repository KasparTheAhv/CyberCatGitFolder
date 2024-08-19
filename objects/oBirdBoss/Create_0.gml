
oGUIBAR.task3="- Kill big chicken";	

	blocker=true;
	text="How dare you kill my precious babies!";
	follow = self;
		with (oPlayer)
			{
			canatk=false;
			immune=true;
			}
		with(oVStick)
		{
			vstick_set_active(stick_id,false);
		}
		with (instance_create_layer(follow.x,follow.y-80,"Particles",oText))
			{
			whasound=502;
			target=other;
			text = other.text;
			length = string_length(text);
			}
		with (oFollowPlayer)
			{
			target = other;
			extraheight=80;
			}

image_xscale=0;
image_yscale=0;
depth=depth-10;
image_speed=1;
current=0;
golock=false;
paremale=noone;
timer=100;
target=0.9;
canatk=false;
go=false;
elud=4;
maxelud=4;
flipper=1;
sequence=0;
attacktype=2;
delay=20;
targetX=0;
with(oFollowPlayer) {target=other;}
// stages
enum birdstate
{
	start,
	fly,
	egg,
	attack,
	god,
	laser,
}



state=birdstate.start;