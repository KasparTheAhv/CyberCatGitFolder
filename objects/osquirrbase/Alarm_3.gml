/// @desc Spawn 2 squir at once
repeat(2)
{
mybirds+=1;	
with (instance_create_layer(x,y,"Characters",oSquir))
		{
			shootrange=230*3;
			timermod=0.75;
			speedmod=1.5;
	
			depth=other.depth-10;
			whatbase=other.id;
		}
}