/// @desc god shield
var who = self.id;
with (instance_create_layer(x,y,"Gun",oShield))
{
count=3; 
enemy=who;
forplayer=false;
}