/// @desc


with(other)
{
instance_destroy();
}

if !(self.shownhint)
{
	if !(instance_exists(oTextFloat))
	{
		self.shownhint=true;
		var etext="Catnip! mmm.. my favorite!";
		follow = instance_nearest(x,y,oFatMan);
			with (instance_create_layer(follow.x,follow.y-40,"Particles",oTextFloat))
				{
				target=other.follow;
				text = etext;
				length = string_length(text); 
				who=other.id;
				}
	}
}

if instance_exists(oGUIBAR)&&(instance_exists(oPlayerGod)){oGUIBAR.cn+=0.5;}
if (elud<maxelud) {self.elud+=1;}
image_blend=c_lime;
alarm[8]=6;
if (visible) && (global.GFX1==1)
{
part_particles_create(oRoomController.part_sys,x,y,oRoomController.part10,irandom_range(3,8)); 
}
if (elud<=0) 
{
	instance_destroy();
	if (visible) && (global.GFX1==1)
	{
	part_particles_create(oRoomController.part_sys, x, y,oRoomController.part23,irandom_range(34,34));
	}
}