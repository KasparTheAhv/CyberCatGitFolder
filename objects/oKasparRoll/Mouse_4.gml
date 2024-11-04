/// @desc
if !CatIsNearClick() {exit;}
if (switchdelay==0)
{
	play_sound(snTvOn,false);
	switchdelay=120;
	alarm[1]=60;	
	alarm[0]=1; // start reducing delay	
	UnlockNoteEgg("Egg",3);
}