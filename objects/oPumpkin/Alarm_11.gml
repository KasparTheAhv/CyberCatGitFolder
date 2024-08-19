/// @desc CypPort Death

if (immune) {exit;}

with (oVineShield) {instance_destroy();}
image_blend=c_red;
image_index=2;
if (self.elud>0)  {self.elud-=25;}
if (elud<=0) {instance_destroy();}


immune=true;
alarm[8]=8; // blend back
alarm[10]=300; // immune off
alarm[1]=180; //gain shield
alarm[2]=160; // attack 