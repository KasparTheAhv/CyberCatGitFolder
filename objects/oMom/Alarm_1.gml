/// @desc  texts

if !instance_exists(oTextFloat) && (point_distance(x,y,oFollowPlayer.x,oFollowPlayer.y)<200)
{
textnr+=1;


if (textnr==1) {	text="Oh my precious munchkin!\nMommas so proud of her little lion!"; }
if (textnr==2) {	text="Can't say the same about myself tho..\nI barely made it out the house before\n I faced my demise because of the rats."; }
if (textnr==3) {	text="I just want you to know one thing...\nthe spirits told me that the curse is reversible."; }
if (textnr==4) {	text="That chinese maniac lied that he's the mastermind!\nI trust you'll find the truth! Just don't give up!"; }
if (textnr==5) {	text="Bye my love! We'll meet again one day!"; }
if (textnr>=6) {expand=false;exit;}

			follow=self;
			with (instance_create_layer(follow.x,follow.y-40,"Particles",oTextFloat))
				{
				timer=160;
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=instance_nearest(x,y,oMom);
				}
				
alarm[1]=140;				
} else {alarm[1]=10;}