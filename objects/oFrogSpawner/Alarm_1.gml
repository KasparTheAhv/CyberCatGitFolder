
if !instance_exists(oFrog)
{
instance_create_layer(x,0,"Dog",oFrog);
alarm[1]=choose(30,40,50);
} else {
instance_create_layer(x-120,0,"Dog",oFrog);	
alarm[2]=10;
}

