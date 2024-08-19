/// @desc Follow player. Reset sequences to normal game sess

with(oRoomController)
	{
	alarm[6]=5;	
	}
with(oPlayer)
{
	immune=false;
	canatk=true;
} 
with (oVStick)
{
	vstick_set_active(stick_id,true);
}
if (instance_exists(oPlayer))
{
self.target=oPlayer;
}else {self.target=noone;}