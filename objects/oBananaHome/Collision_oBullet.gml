if (immune) {exit;}


with (other)
{
instance_destroy();	
}

if instance_exists(oGUIBAR)&&(instance_exists(oPlayerGod)){oGUIBAR.cn+=1;}
image_blend=c_red;
alarm[2]=2;
elud-=1;

if (elud<=0)
{
instance_destroy();
}