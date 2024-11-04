/// @desc
if !CatIsNearClick(){exit;}
if instance_exists(oText) or instance_exists(oTextFloat) {exit;}

UnlockNoteEgg("Egg",2);
var texter="I can't find my hive. Only heard\nsomething about a cat, something cyber.";
with (instance_create_layer(self.x,self.y-50,"Particles",oTextFloat))
{
whasound=503;
timer=120;
target=instance_nearest(x,y,oFollowPlayer);
text = texter;
length = string_length(text);
}