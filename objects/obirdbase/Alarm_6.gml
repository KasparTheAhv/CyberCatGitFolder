/// @desc force spawn 1 bird
if (global.noBase) {exit;}
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
