///@desc show menu or hide
if (settingsOn==false)
{
	instance_deactivate_object(oPauMom1);
	oPause.joonista=false;
	if instance_exists(oVStick)
	{
		with (oVStick)	
		{if (stick_id==1) {oPagraphics.vsPrevJoonista=oVStick.joonista; self.joonista=false;  }}
	}
	
	if instance_exists(oJumpKey) {self.jumpPrevJoonista=oJumpKey.joonista; oJumpKey.joonista=false;  }
	if instance_exists(oAttackKey) {self.atkPrevJoonista=oAttackKey.joonista; oAttackKey.joonista=false;  }
	self.settingsOn=true;
	
	if (global.isAndroid)
	{
	instance_create_layer(x,y,"Particles",oPaskinF);
	instance_create_layer(x,y,"Particles",oPaskinB);
	}
	instance_create_layer(gW*0.2,y,"Particles",oGUSlider);
	instance_create_layer(gW*0.2,y,"Particles",oALSlider);
	show_debug_message("display settings show");
	exit;
} 

if (settingsOn==true) {
	instance_activate_object(oPauMom1);
	instance_destroy(oGUSlider);
	instance_destroy(oALSlider);
	oPause.joonista=true;
	with(oVStick) {if (stick_id==1) {joonista=other.vsPrevJoonista;}}
	with(oAttackKey) {joonista=other.atkPrevJoonista;}
	with(oJumpKey) {joonista=other.jumpPrevJoonista;}
	self.settingsOn=false;
	instance_destroy(oPaskinF);
	instance_destroy(oPaskinB);
	
	with(oAKSlider) {alarm[9]=1;}
	with(oMUSlider) {alarm[9]=1;}
	with(oSNSlider) {alarm[9]=1;}
	with(oMSSlider) {alarm[9]=1;}
	
	show_debug_message("display settings hide");
	
	exit;
}













