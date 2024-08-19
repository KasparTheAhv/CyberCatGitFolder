image_speed=0;
image_index=0;
alarm[1]=100;
mybirds=0;
image_blend=c_white;



if (global.isAndroid) {elud=10;} else  {elud=20;}



if (layer_get_name(layer)!="Walls")
{
depth=self.depth+10;
}
lastbase=false;
