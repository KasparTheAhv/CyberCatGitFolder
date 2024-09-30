if (elud>1)
{
elud-=1;
image_blend=c_red;
if (visible) && (global.GFX1==1)
{
part_particles_create(oRoomController.part_sys, x, y,oRoomController.part6,irandom_range(4,8));
}
alarm[6]=6;
exit;
} else {
UnlockNoteEgg("Egg",1);
	blocker=true;
	text="Seeya in hell!\noh.. and I love the carpet on god btw\nsuits you nicely!";
with (instance_create_layer(self.x,self.y-50,"Particles",oTextFloat))
{
timer=150;
target=other;
text = other.text;
length = string_length(text);
}

instance_create_layer(self.x,self.y,"Characters",oElGatoD);
instance_destroy(self);
}
instance_create_layer(x,y,"BefEdge",oSlash);