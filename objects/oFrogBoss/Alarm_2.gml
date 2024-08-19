///@desc jump
if (vsp<1)
{
	
	target_x=self.x+choose(irandom_range(-300,-150),irandom_range(150,300));
	if (target_x<40) {target_x=self.x+irandom_range(150,300);}
	if (target_x>rW-40) {target_x=self.x-irandom_range(150,300);}
	jump=true;
	jumps+=1;
image_index=1;
if (image_xscale>=5) && !(instance_exists(oPlayerFall)) {blocker=2;}
}
