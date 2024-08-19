image_angle = dir;
firingdelay=firingdelay-1;
recoil=max(0,recoil-1);
xx=algnexx;
yy=algneyy;

if (animate) && (firingdelay<0)
{
	recoil=3;
	firingdelay=5;
}

xx = xx - lengthdir_x(recoil,dir);
yy = yy - lengthdir_y(recoil,dir);


