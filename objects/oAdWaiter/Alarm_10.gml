if (shouldreward)
{
var map = ds_map_secure_load("settings.sav");
var whatkey="LvlBlo"+string(whatunlock);
ds_map_set(map,whatkey,1);
ds_map_secure_save(map,"settings.sav");
oLevelController.counter=0;
if (whatunlock==1){oLevelController.whatexplodes=1;oLevelController.block1=1;
with(oLevel) {if (levelnr-1>=4)&&(levelnr-1<=7)  {if (levelnr-1<=Themaxlvl){image_index=0;alarm[0]=1;}}}
	}
if (whatunlock==2){oLevelController.whatexplodes=2;oLevelController.block2=1;
with(oLevel) {if (levelnr-1>=8)&&(levelnr-1<=11) {if (levelnr-1<=Themaxlvl) {image_index=0;alarm[0]=1;}}}
	}
if (whatunlock==3){oLevelController.whatexplodes=3;oLevelController.block3=1;
with(oLevel) {if (levelnr-1>=12)&&(levelnr-1<=15) {if (levelnr-1<=Themaxlvl) {image_index=0;alarm[0]=1;}}}
	}
if (whatunlock==4){oLevelController.whatexplodes=4;oLevelController.block4=1;
with(oLevel) {if (levelnr-1>=16)&&(levelnr-1<=19) {if (levelnr-1<=Themaxlvl){image_index=0;alarm[0]=1;}}}
	}
if (whatunlock==5){oLevelController.whatexplodes=5;oLevelController.block5=1;
with(oLevel) {if (levelnr-1>=20)&&(levelnr-1<=23) {if (levelnr-1<=Themaxlvl) {image_index=0;alarm[0]=1;}}}	
	}
if (whatunlock==6){oLevelController.whatexplodes=6;oLevelController.block6=1;
with(oLevel) {if (levelnr-1>=24)&&(levelnr-1<=27) {if (levelnr-1<=Themaxlvl) {image_index=0;alarm[0]=1;}}}
	}
if (whatunlock==7){oLevelController.whatexplodes=7;oLevelController.block7=1;
with(oLevel) {if (levelnr-1>=28)&&(levelnr-1<=31) {if (levelnr-1<=Themaxlvl) {image_index=0;alarm[0]=1;}}}		
	}

	instance_destroy();
	} else {
instance_destroy();	
}