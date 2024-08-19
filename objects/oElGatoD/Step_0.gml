if (image_yscale>0.1) {
image_yscale-=0.02;	
image_angle+=8;	
} else {
if (alLock==false){alLock=true;}
}
//
//if (hatup)
//{
//if (yy>y-50) {yy-=1;} else {hatup=false;}
//} else {
//if (yy<y-10) {yy+=1;}
//}

if (alLock==true)
{
if (image_alpha>0) {image_alpha-=0.02;}else {instance_destroy();}	
}