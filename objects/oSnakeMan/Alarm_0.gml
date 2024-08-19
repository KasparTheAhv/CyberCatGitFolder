/// @desc create float text "had it"
text="Enough is enough!\nI've had it with those\nmother efin snakes on\nthis mother efin plane!";
with (instance_create_layer(oFollowPlayer.x,oFollowPlayer.y-110,"Particles",oTextFloat))
{
extraheight=110;
target=oFollowPlayer;
text = other.text;
length = string_length(text);
timer=120;
}