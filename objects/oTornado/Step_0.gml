/// @description Insert description here
// You can write your code in this editor
//Step event
centerX[0] = x;
centerY[0] = y-45;

centerX[1] = x;
centerY[1] = y-30;

centerX[2] = x;
centerY[2] = y-15;

centerX[3] = x;
centerY[3] = y;
//This is to have delete event look better
if(deleteMe)
{
    exit;
}

//My tornado moves, so I'd like to update the depth accordingly


var _windLimit = 0;

var _repeat = 6;

var _chance = 1;

for (var i = 3; i >= 0; --i)
{
    orbitX[i] = (sin(time * spd) * xamp[i]) +  centerX[i];
    orbitY[i] = (cos(time * spd) * yamp[i]) +  centerY[i];
    
    if(windCounter >_windLimit)
    {
        repeat(_repeat)
        {
            if(irandom(_chance) ==_chance)
            {
                //Choose which particle to spawn, and spawn it!                        
    	        var _particle = choose(part_steam_1,part_steam_2,part_steam_large,part_steam_extra_large);
    	      
			  part_particles_create(part_steam_sys, orbitX[i],orbitY[i],_particle,1);
    	    }
        }
    }	
}
//Reset windCounter. 
if(windCounter > _windLimit)
{
    windCounter = 0;	
}

//Increment time and counter
time++;
windCounter++;

if (self.x<oFollowPlayer.x) {x+=1;} else {x-=1;}
if (self.y<oFollowPlayer.y) {y+=1;} 