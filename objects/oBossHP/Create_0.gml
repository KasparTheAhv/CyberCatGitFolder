mobElud=noone;
myboss=noone;
maxElud=noone;
catNip=0;
bossindex=noone;
cnbarOn=noone;
type=0; // if type 0 - few health, 1 - long healthbar

// what boss
if instance_exists(oFrogBoss) {myboss=oFrogBoss;}
if instance_exists(oElGato) {myboss=oElGato;}
if instance_exists(oBirdBoss) {myboss=oBirdBoss;}
if instance_exists(oAngel) {myboss=oAngel;}
if instance_exists(oCthulu) {myboss=oCthulu;}
if instance_exists(oFatMan) {myboss=oFatMan;}
if instance_exists(oDemon) {myboss=oDemon;}
if instance_exists(oWolfBoss) {myboss=oWolfBoss;}
if instance_exists(oPigMono) {myboss=oPigMono;}
if instance_exists(oPumpkin) {myboss=oPumpkin;}
if instance_exists(oMJ) {myboss=oMJ;}
if instance_exists(oChinese) {myboss=oChinese;}
if instance_exists(oThur) {myboss=oThur;}
if instance_exists(oMonocle) {myboss=oMonocle;}
// per boss settings

if instance_exists(myboss)
{
	if (myboss.object_index==oElGato) {bossindex=0;cnbarOn=true;type=0;}
	if (myboss.object_index==oBirdBoss) {bossindex=2;type=0;cnbarOn=false;}
	if (myboss.object_index==oAngel) {bossindex=1;cnbarOn=false;type=1;}
	if (myboss.object_index==oCthulu) {bossindex=3;cnbarOn=false;type=1;}
	if (myboss.object_index==oFrogBoss) {bossindex=4;cnbarOn=false;type=1;}
	if (myboss.object_index==oFatMan) {bossindex=5;cnbarOn=false;type=1;}
	if (myboss.object_index==oDemon) {bossindex=6;type=1;cnbarOn=false;}
	if (myboss.object_index==oWolfBoss) {bossindex=7;type=1;cnbarOn=false;}
	if (myboss.object_index==oPigMono) {bossindex=8;type=1;cnbarOn=false;}
	if (myboss.object_index==oPumpkin) {bossindex=9;type=1;cnbarOn=false;}
	if (myboss.object_index==oMJ) {bossindex=10;type=1;cnbarOn=false;}
	if (myboss.object_index==oChinese) {bossindex=11;type=1;cnbarOn=false;}
	if (myboss.object_index==oThur) {bossindex=12;type=0;cnbarOn=false;}
	if (myboss.object_index==oMonocle) {bossindex=13;type=0;cnbarOn=false;}
	with (myboss)
	{
	other.mobElud=self.elud;
	other.maxElud=self.maxelud;
	if (other.cnbarOn) {other.catNip=self.catnip;}
	other.image_index=self.maxelud-2;
	}
	catNip=clamp(catNip,0,3);	
} 
if (type==1) {wid=165;}
if (type==0)
{
if (maxElud==4) {wid=165;}
if (maxElud==3) {wid=135;}
if (maxElud==2) {wid=105;}
}
image_xscale=1.5+(1*global.GUI);
image_yscale=1.5+(1*global.GUI);  // 55 / 13



rx1=x+(55*image_xscale);
ry1=y-(13*image_yscale);
rx2=x+(162*image_xscale);
ry2=y+(13*image_yscale);



image_speed=0;
self.y=display_get_gui_height()*0.08;
yy=display_get_gui_height()*0.15;
self.x=display_get_gui_width()*0.5-(wid*0.5*image_xscale);
xx=self.x+20;
image_alpha=0;
picX=self.x+(25*image_xscale);
hp1x=self.x+(60*image_xscale);
hp2x=self.x+(90*image_xscale);
hp3x=self.x+(120*image_xscale);
hp4x=self.x+(150*image_xscale);