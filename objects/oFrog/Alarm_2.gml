///@desc jump
if (vsp<1)
{
	target_y=self.y;
	target_x=self.x+choose(irandom_range(-100,-50),irandom_range(50,100));
	distance = point_distance(x, y, target_x, target_y);
	jump=true;
image_index=1;
if (image_xscale>=5) && !(instance_exists(oPlayerFall)) {blocker=2;}
}
if (distance_to_object(oPlayer)<500) {play_sound(snFrog,false);}