/// @desc
if (elud==1) && (state==0)
{
state=1;
imangle=0;
exit;
}


if (damageable) && (state==0)
{
shaketime=80;	
elud-=1;
damageable=false;
}

