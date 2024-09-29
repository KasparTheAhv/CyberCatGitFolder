/// @desc choose attack chain

// if is in selecting state
if (selecting)
{
	for (var i =0; i<3; i++)
	{
		if (device_mouse_check_button_pressed(i,mb_any))
		{
			whatdevice=i;
		}
	}
	var yes = false;	
	var xx = device_mouse_x(whatdevice),
    var yy = device_mouse_y(whatdevice);
	var whotoattack=instance_nearest(xx,yy,all)
	with (whotoattack)
	{
		if (point_distance(x,y, xx,yy)< 48)
		{
			if (object_index==oSquir) {yes=true;} 
			if (object_index==oRat) {yes=true;  } 	
			if (object_index==oSnake) {yes=true;  } 
			if (object_index==oMonke) {yes=true;  } 	
			if (object_index==oFrog) {yes=true; } 	
			if (object_index==oBird) {yes=true; } 
			if (object_index==oPenquin) {yes=true; } 
			if (object_index==oLocIndi) {yes=true; } 
			if (object_index==oSeal) {yes=true; } 
			if (object_index==oThur) {yes=true; }
			if (object_index==oElGato) {yes=true; } 
			if (object_index==oBirdBoss) {yes=true; } 
			if (object_index==oBat) {yes=true; } 
			if (object_index==oSoySauce) {yes=true; } 
			if (object_index==oWolfKid) {yes=true; } 
			if (object_index==oHeliLizard) {yes=true; } 
			if (object_index==oTPDUMMY) {yes=true; } 
			if (object_index==oAngerbird) {yes=true; } 
		}
	}
	//Check if it's a valid target to teleport attack to
	if !(yes) {exit;}
	
	// push target into array 
	if (pushed<4)
	{
		if instance_exists(whotoattack) && !(array_contains(targetArray,whotoattack.id))
		{
			self.x=whotoattack.x;
			self.y=whotoattack.y;
			
			pushed+=1;
			array_push(targetArray,whotoattack.id);
			
			if (pushed<4)
			{
				with (oFollowPlayer) {target=whotoattack.id;}
			}
			else if (pushed==4)
			{
				drawtime=false;
				pieseconds=600;
				maxpushed=pushed-1;
				pushed=0;
				selecting=false;
				alarm[0]=45; // start reaping
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
			}
		}
	}	
}