/// @desc
if instance_exists(oText) or instance_exists(oTextFloat) {exit;}

UnlockNoteEgg("Egg",3);

var texter="Bestest pizza! \n Straight outta pizza tower";
with (instance_create_layer(self.x,self.y-50,"Particles",oTextFloat))
{
timer=120;
target=other;
text = texter;
length = string_length(text);
}	