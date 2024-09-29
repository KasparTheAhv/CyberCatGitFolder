/// @description Insert description here
// You can write your code in this editor
if (pieseconds>0) //if theres time, take away sec
{
	if (drawtime)
	{
	pieseconds-=1;
	seconds=floor(pieseconds/60);
	}
} else {
	
	if (selecting)
	{
		// if targets pushed into array. search for firsts locations and start reaping
		if (pushed>0)
		{
			maxpushed=pushed-1;
			pushed=0;
			selecting=false;
			alarm[0]=45; // start reaping
			global.strikeZoom=false;
			for (var j=0;j<array_length(targetArray)-1;j++)
			{
				global.strikeZoom=false;
				var who = targetArray[j];
				if instance_exists(who)
				{
					with (oFollowPlayer) {target=who.id;}
					break;
				}
			}
		} else { // if there's no targets, end reaping with start location
			maxpushed=pushed-1;
			pushed=0;
			who = self.id;
			self.x=xstart;
			self.y=ystart;
			selecting=false;
			global.strikeZoom=false;
			with (oFollowPlayer) {target=who;x=who.x;y=who.y;}
			instance_destroy();		
		}
	}
}