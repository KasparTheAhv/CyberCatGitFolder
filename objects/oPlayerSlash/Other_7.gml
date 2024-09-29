wips+=1;
if (wips<maxWips)
{
image_angle+=irandom_range(160,200);
image_xscale*=-1;
} else {
instance_destroy();
}