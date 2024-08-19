/// @desc ask child to retract and delete self 
if (whomademe!=noone)
{
	with (whomademe)
	{
	image_index=0;
	deleteme=true;	
	start=false;	
	}
}

instance_destroy(self);