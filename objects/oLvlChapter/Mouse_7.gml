/// @desc
if instance_exists(oLevelGo) {exit;}

with (oLevelController)
{
if (chapter==1)	{chapter=2;} else {chapter=1;}
alarm[1]=1;
}