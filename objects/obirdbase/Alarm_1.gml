/// @desc Spawn bird
// You can write your code in this editor

if (global.noBase) {exit;}

if (boss)
{
exit;
}


if (activated)
{
	if instance_exists(oPlayerGod)
	{
		if (global.isAndroid) {var extraBirds=5;} else  {var extraBirds=7;}
		if (mybirds<maxbirds+5)
		{
			mybirds+=1;
			with (instance_create_layer(x,y,"Dog",oBird))
			{
				flyspd=choose(1.5,1.75,2,2.5);
				speedmod=2;
				// What room how many paths:
				path=Path1;
				if (room==Room7) {path=choose(Path1,Path2);}
				if (room==Room8) {path=Path3;}
				if (room==Room14) {path=choose(Path1Room14,Path2Room14);}
				if (room==Room15) {path=Path4;}
				if (room==Room20) {path=Path5;}
				if (room==Room26) {path=PathRoom26;}
				if (room==Room27) {path=PathRoom27;}
				if (room==Room30) {path=PathRoom30;}
				if (room==Room31) {path=PathRoom31;}
				whatbase=other.id;
				alarm[5]=10;
			} 
			if (global.isAndroid) {alarm[1]=choose(60,80,100); } else {alarm[1]=choose(30,50,70); }
			
			exit;
		}
		
	} else {	
		if (mybirds<maxbirds)
		{
			mybirds+=1;
			with (instance_create_layer(x,y,"Dog",oBird))
			{
					// What room how many paths:
				path=Path1;
				if (room==Room7) {path=choose(Path1,Path2);}
				if (room==Room8) {path=Path3;}
				if (room==Room14) {path=choose(Path1Room14,Path2Room14);}
				if (room==Room15) {path=Path4;}
				if (room==Room20) {path=Path5;}
				if (room==Room26) {path=PathRoom26;}
				if (room==Room27) {path=PathRoom27;}
				if (room==Room30) {path=PathRoom30;}
				if (room==Room31) {path=PathRoom31;}
				whatbase=other.id;
				flyspd=choose(1.5,1.75,2,2.5);
				speedmod=1;
				alarm[2]=10;
			}
		}
	}
} else if (instance_exists(oPlayerGod))
	{
		if (global.isAndroid) {var extraBirds=3;} else  {var extraBirds=5;}
		
		if (mybirds<maxbirds+extraBirds)
		{
			mybirds+=1;
		with (instance_create_layer(x,y,"Dog",oBird))
		{
			flyspd=choose(2,2.5);
			speedmod=2;
			path=Path1;
				
			if (room==Room7) {path=choose(Path1,Path2);}
			if (room==Room8) {path=Path3;}
			if (room==Room14) {path=choose(Path1Room14,Path2Room14);}
			if (room==Room15) {path=Path4;}
			if (room==Room20) {path=Path5;}
			if (room==Room26) {path=PathRoom26;}
			if (room==Room27) {path=PathRoom27;}
			if (room==Room30) {path=PathRoom30;}
			if (room==Room31) {path=PathRoom31;}
			whatbase=other.id;
	
			alarm[5]=10;
		} alarm[1]=choose(60,80,100); exit;
		}
	}
alarm[1]=choose(100,150,200);