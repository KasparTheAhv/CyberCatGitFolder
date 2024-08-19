/// @desc ask child to retract and delete self 
if (whomademe!=noone)
{
	with (whomademe)
	{
	image_index=0;
	deleteme=true;	
	start=false;
	damage=true;
	image_blend=c_orange;
	}
}

instance_destroy(self);