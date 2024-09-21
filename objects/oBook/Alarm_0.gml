/// @desc shaker
if (shaker>0)
{
	shaker-=1;
	self.x=algnex+choose(-2,-1,1,2);
	self.y=algney+choose(-2,-1,1,2);
	alarm[0]=2;
} else {self.x=algnex; self.y=algney;}





