/// @desc bird boss spawn ?
if instance_exists(oPlayer)
{
boss=false;
		with (oPlayer)
			{
			canatk=false;
			immune=true;
			alarm[4]=-1;
			}
		with(oVStick)
		{
			vstick_set_active(stick_id,false);
		}
instance_create_layer(self.x,self.y,"Electro",oBirdBoss);
with(oPlayerFall)
{
	instance_change(oPlayer,false);
}
with(oPlayerAttack)
{
	instance_change(oPlayer,false);
}

} else {alarm[5]=1;}

