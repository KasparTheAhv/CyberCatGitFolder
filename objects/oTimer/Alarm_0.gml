/// @desc timer running down
if (seconds>0)
{
seconds-=1;	
sec=string(seconds);
alarm[0]=60;
} else {
instance_destroy();
}