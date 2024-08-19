/// @desc Dead penq fade
var allow1=false;
var allow2=false;
var allow3=false;
if instance_exists(oPenqD)
{
	with (oPenqD)
	{
	if (kustun) {if (image_alpha>0){image_alpha-=0.01;} else {instance_destroy(self);} }
	}
	alarm[7]=1;
} else {allow1=true;}

if instance_exists(oThurD)
{
	
	with (oThurD)
	{
	if (kustun) {if (image_alpha>0){image_alpha-=0.01;} else {instance_destroy(self);} }
	}
	alarm[7]=1;
} else {allow2=true;}

if instance_exists(oMonkeDeath)
{
	
	with (oMonkeDeath)
	{
	if (kustun) {if (image_alpha>0){image_alpha-=0.01;} else {instance_destroy(self);} }
	}
	alarm[7]=1;
} else {allow3=true;}


if (allow1)
{
	if (allow3)
	{
		if (allow2) {exit;}
	}
}



