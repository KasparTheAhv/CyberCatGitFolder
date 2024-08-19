if (stage==0)
{
if (alpha<0.90) {alpha+=0.15;} else {stage=1;}
} 
else 
{
if (alpha>0) {alpha-=0.075;} else {instance_destroy();}
}