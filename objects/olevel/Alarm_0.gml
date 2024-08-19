///@desc HERE YOU CHANGE MAXLEVELS SHOWN.
//calculate positioning
var settingsmap=ds_map_secure_load("settings.sav");
var maxlvl=ds_map_find_value(settingsmap,"maxlvl");

if (levelnr==999) 
{
whereto=RoomMenu;
actuallevel="BACK";
image_index=3;
self.x=rW*0.05;
self.y=rH*0.7;
exit;	
}

var howmanyinrow=8;
mitmesrida=levelnr/howmanyinrow;
mitmesrida=ceil(mitmesrida);
mitmestulp=levelnr-mitmesrida*howmanyinrow;
mitmestulp=howmanyinrow+(mitmestulp);
xmodifier=0.05+(0.1*mitmestulp);
ymodifier=0+(0.2*mitmesrida);
self.x=rW*xmodifier;
self.y=rH*ymodifier;
actuallevel=levelnr-1;

if (os_type==os_windows)
{
if (maxlvl>=15) {maxlvl=15;}
}

if (actuallevel<=maxlvl) {unlocked=true;}



// HERE YOU CHANGE MAXLEVELS SHOWN. change number to what max level is unlocked
if (actuallevel>31) {unlocked=false;image_index=4;}
// adlocks
myadunlocked=1;
myblock=0;

if (actuallevel>=4) && (actuallevel<=7)
{myadunlocked=oLevelController.block1;myblock=1;}
if (actuallevel>=8) && (actuallevel<=11)
{myadunlocked=oLevelController.block2;myblock=2;}
if (actuallevel>=12) && (actuallevel<=15)
{myadunlocked=oLevelController.block3;myblock=3;}
if (actuallevel>=16) && (actuallevel<=19)
{myadunlocked=oLevelController.block4;myblock=4;}
if (actuallevel>=20) && (actuallevel<=23)
{myadunlocked=oLevelController.block5;myblock=5;}
if (actuallevel>=24) && (actuallevel<=27)
{myadunlocked=oLevelController.block6;myblock=6;}
if (actuallevel>=28) && (actuallevel<=31)
{myadunlocked=oLevelController.block7;myblock=7;}

slotY=	(36*picscale)+self.y;
slotX=	(12*picscale)+self.x;
slotX2=	(20*picscale)+self.x;

if (actuallevel>=10) {
	slots=2;
	var strActLvl= string(actuallevel); 
	var strFirstLetter =string_copy(strActLvl,1,1);
	var strLastLetter =string_copy(strActLvl,2,1);	
	slot1index=real(strFirstLetter);
	slot2index=real(strLastLetter);	
	if (strLastLetter=="1") {slotX2=self.x+(18*picscale);} else {slotX2=self.x+(20*picscale);}
	
	} else {
	slots=1;
	slot1index=actuallevel;
	slotX=self.x+(15*picscale);
	slotX2=self.x+(20*picscale);
	}


if (unlocked) {
	if (myadunlocked==1)
	{
		image_index=0;
		drawName=true;
		
	} else {
		image_index=6;
		drawName=false;
	}
}

whatvar = "Room"+string(actuallevel);
whereto = asset_get_index(whatvar);

// discover color 

if (actuallevel==0)
{
var note1=ds_map_find_value(settingsmap,"Room0Note1");
if is_undefined(note1) {note1=0;}
var note2=ds_map_find_value(settingsmap,"Room0Note2");
if is_undefined(note2) {note2=0;}
var egg1=ds_map_find_value(settingsmap,"Room0Egg1");
if is_undefined(egg1) {egg1=0;}
var egg2=ds_map_find_value(settingsmap,"Room0Egg2");
if is_undefined(egg2) {egg2=0;}
discovery=((note1+note2+egg1+egg2)/4)*100;
}

if (actuallevel==1)
{
var note1=ds_map_find_value(settingsmap,"Room1Note1");
if is_undefined(note1) {note1=0;}
var note2=ds_map_find_value(settingsmap,"Room1Note2");
if is_undefined(note2) {note2=0;}
var egg1=ds_map_find_value(settingsmap,"Room1Egg1");
if is_undefined(egg1) {egg1=0;}
discovery=((note1+note2+egg1)/3)*100;
}

if (actuallevel==2)
{
var note1=ds_map_find_value(settingsmap,"Room2Note1");
if is_undefined(note1) {note1=0;}
var note2=ds_map_find_value(settingsmap,"Room2Note2");
if is_undefined(note2) {note2=0;}
var egg1=ds_map_find_value(settingsmap,"Room2Egg1");
if is_undefined(egg1) {egg1=0;}
discovery=((note1+note2+egg1)/3)*100;
}

if (actuallevel==3)
{
var note1=ds_map_find_value(settingsmap,"Room3Note1");
if is_undefined(note1) {note1=0;}
var note2=ds_map_find_value(settingsmap,"Room3Note2");
if is_undefined(note2) {note2=0;}
var note3=ds_map_find_value(settingsmap,"Room3Note3");
if is_undefined(note3) {note3=0;}
var egg1=ds_map_find_value(settingsmap,"Room3Egg1");
if is_undefined(egg1) {egg1=0;}
var egg2=ds_map_find_value(settingsmap,"Room3Egg2");
if is_undefined(egg2) {egg2=0;}
discovery=((note1+note2+note3+egg1+egg2)/5)*100;
}

if (actuallevel==4)
{
var note1=ds_map_find_value(settingsmap,"Room4Note1");
if is_undefined(note1) {note1=0;}
var note2=ds_map_find_value(settingsmap,"Room4Note2");
if is_undefined(note2) {note2=0;}
var note3=ds_map_find_value(settingsmap,"Room4Note3");
if is_undefined(note3) {note3=0;}
var egg1=ds_map_find_value(settingsmap,"Room4Egg1");
if is_undefined(egg1) {egg1=0;}
var egg2=ds_map_find_value(settingsmap,"Room4Egg2");
if is_undefined(egg2) {egg2=0;}
var egg3=ds_map_find_value(settingsmap,"Room4Egg3");
if is_undefined(egg3) {egg3=0;}
discovery=((note1+note2+note3+egg1+egg2+egg3)/6)*100;
}
if (actuallevel==5)
{
var note1=ds_map_find_value(settingsmap,"Room5Note1");
if is_undefined(note1) {note1=0;}
var note2=ds_map_find_value(settingsmap,"Room5Note2");
if is_undefined(note2) {note2=0;}
var note3=ds_map_find_value(settingsmap,"Room5Note3");
if is_undefined(note3) {note3=0;}
var note4=ds_map_find_value(settingsmap,"Room5Note4");
if is_undefined(note4) {note4=0;}
var note5=ds_map_find_value(settingsmap,"Room5Note5");
if is_undefined(note5) {note5=0;}
var note6=ds_map_find_value(settingsmap,"Room5Note6");
if is_undefined(note6) {note6=0;}
var egg1=ds_map_find_value(settingsmap,"Room5Egg1");
if is_undefined(egg1) {egg1=0;}
var egg2=ds_map_find_value(settingsmap,"Room5Egg2");
if is_undefined(egg2) {egg2=0;}
var egg3=ds_map_find_value(settingsmap,"Room5Egg3");
if is_undefined(egg3) {egg3=0;}
var egg4=ds_map_find_value(settingsmap,"Room5Egg4");
if is_undefined(egg4) {egg4=0;}
discovery=((note1+note2+note3+note4+note5+note6+egg1+egg2+egg3+egg4)/10)*100;
}
if (actuallevel==6)
{
var note1=ds_map_find_value(settingsmap,"Room6Note1");
if is_undefined(note1) {note1=0;}
var egg1=ds_map_find_value(settingsmap,"Room6Egg1");
if is_undefined(egg1) {egg1=0;}
discovery=((note1+egg1)/2)*100;
}
if (actuallevel==7)
{
var note1=ds_map_find_value(settingsmap,"Room7Note1");
if is_undefined(note1) {note1=0;}
var note2=ds_map_find_value(settingsmap,"Room7Note2");
if is_undefined(note2) {note2=0;}
var egg1=ds_map_find_value(settingsmap,"Room7Egg1");
if is_undefined(egg1) {egg1=0;}
var egg2=ds_map_find_value(settingsmap,"Room7Egg2");
if is_undefined(egg2) {egg2=0;}
discovery=((note1+note2+egg1+egg2)/4)*100;
}
if (actuallevel==8)
{
var note1=ds_map_find_value(settingsmap,"Room8Note1");
if is_undefined(note1) {note1=0;}
var note2=ds_map_find_value(settingsmap,"Room8Note2");
if is_undefined(note2) {note2=0;}
var note3=ds_map_find_value(settingsmap,"Room8Note3");
if is_undefined(note3) {note3=0;}
var egg1=ds_map_find_value(settingsmap,"Room8Egg1");
if is_undefined(egg1) {egg1=0;}
var egg2=ds_map_find_value(settingsmap,"Room8Egg2");
if is_undefined(egg2) {egg2=0;}
var egg3=ds_map_find_value(settingsmap,"Room8Egg3");
if is_undefined(egg3) {egg3=0;}
discovery=((note1+note2+note3+egg1+egg2+egg3)/6)*100;
}
if (actuallevel==9)
{
var note1=ds_map_find_value(settingsmap,"Room9Note1");
if is_undefined(note1) {note1=0;}
var note2=ds_map_find_value(settingsmap,"Room9Note2");
if is_undefined(note2) {note2=0;}
var note3=ds_map_find_value(settingsmap,"Room9Note3");
if is_undefined(note3) {note3=0;}
var egg1=ds_map_find_value(settingsmap,"Room9Egg1");
if is_undefined(egg1) {egg1=0;}
var egg2=ds_map_find_value(settingsmap,"Room9Egg2");
if is_undefined(egg2) {egg2=0;}
var egg3=ds_map_find_value(settingsmap,"Room9Egg3");
if is_undefined(egg3) {egg3=0;}
var egg4=ds_map_find_value(settingsmap,"Room9Egg4");
if is_undefined(egg4) {egg4=0;}
discovery=((note1+note2+note3+egg1+egg2+egg3+egg4)/7)*100;
}

if (actuallevel==10)
{
var note1=ds_map_find_value(settingsmap,"Room10Note1");
if is_undefined(note1) {note1=0;}
var note2=ds_map_find_value(settingsmap,"Room10Note2");
if is_undefined(note2) {note2=0;}
var egg1=ds_map_find_value(settingsmap,"Room10Egg1");
if is_undefined(egg1) {egg1=0;}
discovery=((note1+note2+egg1)/3)*100;

}
if (actuallevel==11)
{
var note1=ds_map_find_value(settingsmap,"Room11Note1");
if is_undefined(note1) {note1=0;}
var note2=ds_map_find_value(settingsmap,"Room11Note2");
if is_undefined(note2) {note2=0;}
var egg1=ds_map_find_value(settingsmap,"Room11Egg1");
if is_undefined(egg1) {egg1=0;}
discovery=((note1+note2+egg1)/3)*100;

}
if (actuallevel==12)
{
var note1=ds_map_find_value(settingsmap,"Room12Note1");
if is_undefined(note1) {note1=0;}
var note2=ds_map_find_value(settingsmap,"Room12Note2");
if is_undefined(note2) {note2=0;}
var egg1=ds_map_find_value(settingsmap,"Room12Egg1");
if is_undefined(egg1) {egg1=0;}
discovery=((note1+note2+egg1)/3)*100;
}
if (actuallevel==13)
{
var note1=ds_map_find_value(settingsmap,"Room13Note1");
if is_undefined(note1) {note1=0;}
var note2=ds_map_find_value(settingsmap,"Room13Note2");
if is_undefined(note2) {note2=0;}
var egg1=ds_map_find_value(settingsmap,"Room13Egg1");
if is_undefined(egg1) {egg1=0;}
var egg2=ds_map_find_value(settingsmap,"Room13Egg2");
if is_undefined(egg2) {egg2=0;}
var egg3=ds_map_find_value(settingsmap,"Room13Egg3");
if is_undefined(egg3) {egg3=0;}
discovery=((note1+note2+egg1+egg2+egg3)/5)*100;
}
if (actuallevel==14)
{
var note1=ds_map_find_value(settingsmap,"Room14Note1");
if is_undefined(note1) {note1=0;}
var note2=ds_map_find_value(settingsmap,"Room14Note2");
if is_undefined(note2) {note2=0;}
var egg1=ds_map_find_value(settingsmap,"Room14Egg1");
if is_undefined(egg1) {egg1=0;}
var egg2=ds_map_find_value(settingsmap,"Room14Egg2");
if is_undefined(egg2) {egg2=0;}
discovery=((note1+note2+egg1+egg2)/4)*100;
}
if (actuallevel==15)
{
var note1=ds_map_find_value(settingsmap,"Room15Note1");
if is_undefined(note1) {note1=0;}
var note2=ds_map_find_value(settingsmap,"Room15Note2");
if is_undefined(note2) {note2=0;}
var egg1=ds_map_find_value(settingsmap,"Room15Egg1");
if is_undefined(egg1) {egg1=0;}
var egg2=ds_map_find_value(settingsmap,"Room15Egg2");
if is_undefined(egg2) {egg2=0;}
var egg3=ds_map_find_value(settingsmap,"Room15Egg3");
if is_undefined(egg3) {egg3=0;}
var egg4=ds_map_find_value(settingsmap,"Room15Egg4");
if is_undefined(egg4) {egg4=0;}
discovery=((note1+note2+egg1+egg2+egg3+egg4)/6)*100;
}
if (actuallevel==16)
{
var note1=ds_map_find_value(settingsmap,"Room16Note1");
if is_undefined(note1) {note1=0;}
var note2=ds_map_find_value(settingsmap,"Room16Note2");
if is_undefined(note2) {note2=0;}
var egg1=ds_map_find_value(settingsmap,"Room16Egg1");
if is_undefined(egg1) {egg1=0;}
var egg2=ds_map_find_value(settingsmap,"Room16Egg2");
if is_undefined(egg2) {egg2=0;}
var egg3=ds_map_find_value(settingsmap,"Room16Egg3");
if is_undefined(egg3) {egg3=0;}
discovery=((note1+note2+egg1+egg2+egg3)/5)*100;
}
if (actuallevel==17)
{
var note1=ds_map_find_value(settingsmap,"Room17Note1");
if is_undefined(note1) {note1=0;}
var note2=ds_map_find_value(settingsmap,"Room17Note2");
if is_undefined(note2) {note2=0;}
var egg1=ds_map_find_value(settingsmap,"Room17Egg1");
if is_undefined(egg1) {egg1=0;}
var egg2=ds_map_find_value(settingsmap,"Room17Egg2");
if is_undefined(egg2) {egg2=0;}
discovery=((note1+note2+egg1+egg2)/4)*100;
}
if (actuallevel==18)
{
var note1=ds_map_find_value(settingsmap,"Room18Note1");
if is_undefined(note1) {note1=0;}
var note2=ds_map_find_value(settingsmap,"Room18Note2");
if is_undefined(note2) {note2=0;}
var egg1=ds_map_find_value(settingsmap,"Room18Egg1");
if is_undefined(egg1) {egg1=0;}
var egg2=ds_map_find_value(settingsmap,"Room18Egg2");
if is_undefined(egg2) {egg2=0;}
discovery=((note1+note2+egg1+egg2)/4)*100;
}
if (actuallevel==19)
{
var note1=ds_map_find_value(settingsmap,"Room19Note1");
if is_undefined(note1) {note1=0;}
var note2=ds_map_find_value(settingsmap,"Room19Note2");
if is_undefined(note2) {note2=0;}
var egg1=ds_map_find_value(settingsmap,"Room19Egg1");
if is_undefined(egg1) {egg1=0;}
var egg2=ds_map_find_value(settingsmap,"Room19Egg2");
if is_undefined(egg2) {egg2=0;}
var egg3=ds_map_find_value(settingsmap,"Room19Egg3");
if is_undefined(egg3) {egg3=0;}
discovery=((note1+note2+egg1+egg2+egg3)/5)*100;
}
if (actuallevel==20)
{
var note1=ds_map_find_value(settingsmap,"Room20Note1");
if is_undefined(note1) {note1=0;}
var note2=ds_map_find_value(settingsmap,"Room20Note2");
if is_undefined(note2) {note2=0;}
var note3=ds_map_find_value(settingsmap,"Room20Note3");
if is_undefined(note3) {note3=0;}
var egg1=ds_map_find_value(settingsmap,"Room20Egg1");
if is_undefined(egg1) {egg1=0;}
var egg2=ds_map_find_value(settingsmap,"Room20Egg2");
if is_undefined(egg2) {egg2=0;}
var egg3=ds_map_find_value(settingsmap,"Room20Egg3");
if is_undefined(egg3) {egg3=0;}
var egg4=ds_map_find_value(settingsmap,"Room20Egg4");
if is_undefined(egg4) {egg4=0;}
var egg5=ds_map_find_value(settingsmap,"Room20Egg5");
if is_undefined(egg5) {egg5=0;}
discovery=((note1+note2+note3+egg1+egg2+egg3+egg4+egg5)/8)*100;
}
if (actuallevel==21)
{
var note1=ds_map_find_value(settingsmap,"Room21Note1");
if is_undefined(note1) {note1=0;}
var note2=ds_map_find_value(settingsmap,"Room21Note2");
if is_undefined(note2) {note2=0;}
var egg1=ds_map_find_value(settingsmap,"Room21Egg1");
if is_undefined(egg1) {egg1=0;}
var egg2=ds_map_find_value(settingsmap,"Room21Egg2");
if is_undefined(egg2) {egg2=0;}
discovery=((note1+note2+egg1+egg2)/4)*100;
}
if (actuallevel==22)
{
var note1=ds_map_find_value(settingsmap,"Room22Note1");
if is_undefined(note1) {note1=0;}
var note2=ds_map_find_value(settingsmap,"Room22Note2");
if is_undefined(note2) {note2=0;}
var egg1=ds_map_find_value(settingsmap,"Room22Egg1");
if is_undefined(egg1) {egg1=0;}
var egg2=ds_map_find_value(settingsmap,"Room22Egg2");
if is_undefined(egg2) {egg2=0;}
discovery=((note1+note2+egg1+egg2)/4)*100;
}
if (actuallevel==23)
{
var note1=ds_map_find_value(settingsmap,"Room23Note1");
if is_undefined(note1) {note1=0;}
var note2=ds_map_find_value(settingsmap,"Room23Note2");
if is_undefined(note2) {note2=0;}
var note3=ds_map_find_value(settingsmap,"Room23Note3");
if is_undefined(note3) {note3=0;}
var note4=ds_map_find_value(settingsmap,"Room23Note4");
if is_undefined(note4) {note4=0;}
var egg1=ds_map_find_value(settingsmap,"Room23Egg1");
if is_undefined(egg1) {egg1=0;}
var egg2=ds_map_find_value(settingsmap,"Room23Egg2");
if is_undefined(egg2) {egg2=0;}
var egg3=ds_map_find_value(settingsmap,"Room23Egg3");
if is_undefined(egg3) {egg3=0;}
var egg4=ds_map_find_value(settingsmap,"Room23Egg4");
if is_undefined(egg4) {egg4=0;}
discovery=((note1+note2+note3+note4+egg1+egg2+egg3+egg4)/8)*100;

}
if (actuallevel==24)
{
var note1=ds_map_find_value(settingsmap,"Room24Note1");
if is_undefined(note1) {note1=0;}
var note2=ds_map_find_value(settingsmap,"Room24Note2");
if is_undefined(note2) {note2=0;}
var note3=ds_map_find_value(settingsmap,"Room24Note3");
if is_undefined(note3) {note3=0;}
var note4=ds_map_find_value(settingsmap,"Room24Note4");
if is_undefined(note4) {note4=0;}
var egg1=ds_map_find_value(settingsmap,"Room24Egg1");
if is_undefined(egg1) {egg1=0;}
var egg2=ds_map_find_value(settingsmap,"Room24Egg2");
if is_undefined(egg2) {egg2=0;}
var egg3=ds_map_find_value(settingsmap,"Room24Egg3");
if is_undefined(egg3) {egg3=0;}
discovery=((note1+note2+note3+note4+egg1+egg2+egg3)/7)*100;
}
if (actuallevel==25)
{
var note1=ds_map_find_value(settingsmap,"Room25Note1");
if is_undefined(note1) {note1=0;}
var note2=ds_map_find_value(settingsmap,"Room25Note2");
if is_undefined(note2) {note2=0;}
var note3=ds_map_find_value(settingsmap,"Room25Note3");
if is_undefined(note3) {note3=0;}
var note4=ds_map_find_value(settingsmap,"Room25Note4");
if is_undefined(note4) {note4=0;}
var egg1=ds_map_find_value(settingsmap,"Room25Egg1");
if is_undefined(egg1) {egg1=0;}
var egg2=ds_map_find_value(settingsmap,"Room25Egg2");
if is_undefined(egg2) {egg2=0;}
discovery=((note1+note2+note3+note4+egg1+egg2)/6)*100;
}

if (actuallevel==26)
{
var note1=ds_map_find_value(settingsmap,"Room26Note1");
if is_undefined(note1) {note1=0;}
var note2=ds_map_find_value(settingsmap,"Room26Note2");
if is_undefined(note2) {note2=0;}
var note3=ds_map_find_value(settingsmap,"Room26Note3");
if is_undefined(note3) {note3=0;}

var egg1=ds_map_find_value(settingsmap,"Room26Egg1");
if is_undefined(egg1) {egg1=0;}
var egg2=ds_map_find_value(settingsmap,"Room26Egg2");
if is_undefined(egg2) {egg2=0;}
var egg3=ds_map_find_value(settingsmap,"Room26Egg3");
if is_undefined(egg3) {egg3=0;}
var egg4=ds_map_find_value(settingsmap,"Room26Egg4");
if is_undefined(egg4) {egg4=0;}
var egg5=ds_map_find_value(settingsmap,"Room26Egg5");
if is_undefined(egg5) {egg5=0;}
var egg6=ds_map_find_value(settingsmap,"Room26Egg6");
if is_undefined(egg6) {egg6=0;}
discovery=((note1+note2+note3+egg1+egg2+egg3+egg4+egg5+egg6)/9)*100;

}

if (actuallevel==27)
{
var note1=ds_map_find_value(settingsmap,"Room27Note1");
if is_undefined(note1) {note1=0;}
var note2=ds_map_find_value(settingsmap,"Room27Note2");
if is_undefined(note2) {note2=0;}
var note3=ds_map_find_value(settingsmap,"Room27Note3");
if is_undefined(note3) {note3=0;}
var note4=ds_map_find_value(settingsmap,"Room27Note4");
if is_undefined(note4) {note4=0;}
var egg1=ds_map_find_value(settingsmap,"Room27Egg1");
if is_undefined(egg1) {egg1=0;}
var egg2=ds_map_find_value(settingsmap,"Room27Egg2");
if is_undefined(egg2) {egg2=0;}
var egg3=ds_map_find_value(settingsmap,"Room27Egg3");
if is_undefined(egg3) {egg3=0;}
discovery=((note1+note2+note3+note4+egg1+egg2+egg3)/7)*100;
}

if (actuallevel==28)
{
var note1=ds_map_find_value(settingsmap,"Room28Note1");
if is_undefined(note1) {note1=0;}
var note2=ds_map_find_value(settingsmap,"Room28Note2");
if is_undefined(note2) {note2=0;}
var note3=ds_map_find_value(settingsmap,"Room28Note3");
if is_undefined(note3) {note3=0;}
var note4=ds_map_find_value(settingsmap,"Room28Note4");
if is_undefined(note4) {note4=0;}
var egg1=ds_map_find_value(settingsmap,"Room28Egg1");
if is_undefined(egg1) {egg1=0;}
var egg2=ds_map_find_value(settingsmap,"Room28Egg2");
if is_undefined(egg2) {egg2=0;}
var egg3=ds_map_find_value(settingsmap,"Room28Egg3");
if is_undefined(egg3) {egg3=0;}
discovery=((note1+note2+note3+note4+egg1+egg2+egg3)/7)*100;

}

if (actuallevel==29)
{
var note1=ds_map_find_value(settingsmap,"Room29Note1");
if is_undefined(note1) {note1=0;}
var note2=ds_map_find_value(settingsmap,"Room29Note2");
if is_undefined(note2) {note2=0;}
var note3=ds_map_find_value(settingsmap,"Room29Note3");
if is_undefined(note3) {note3=0;}
var egg1=ds_map_find_value(settingsmap,"Room29Egg1");
if is_undefined(egg1) {egg1=0;}
var egg2=ds_map_find_value(settingsmap,"Room29Egg2");
if is_undefined(egg2) {egg2=0;}
discovery=((note1+note2+note3+egg1+egg2)/5)*100;
}

if (actuallevel==30)
{
var note1=ds_map_find_value(settingsmap,"Room30Note1");
if is_undefined(note1) {note1=0;}
var note2=ds_map_find_value(settingsmap,"Room30Note2");
if is_undefined(note2) {note2=0;}
var note3=ds_map_find_value(settingsmap,"Room30Note3");
if is_undefined(note3) {note3=0;}
var egg1=ds_map_find_value(settingsmap,"Room30Egg1");
if is_undefined(egg1) {egg1=0;}
var egg2=ds_map_find_value(settingsmap,"Room30Egg2");
if is_undefined(egg2) {egg2=0;}
discovery=((note1+note2+note3+egg1+egg2)/5)*100;
}

if (actuallevel==31)
{
var note1=ds_map_find_value(settingsmap,"Room31Note1");
if is_undefined(note1) {note1=0;}
var note2=ds_map_find_value(settingsmap,"Room31Note2");
if is_undefined(note2) {note2=0;}
var note3=ds_map_find_value(settingsmap,"Room31Note3");
if is_undefined(note3) {note3=0;}
var egg1=ds_map_find_value(settingsmap,"Room31Egg1");
if is_undefined(egg1) {egg1=0;}
var egg2=ds_map_find_value(settingsmap,"Room31Egg2");
if is_undefined(egg2) {egg2=0;}
discovery=((note1+note2+note3+egg1+egg2)/5)*100;
}


/////////////// discovery end colors /////////////////
if (discovery>=0)  {lvlblend=$666600;}
if (discovery>25)  {lvlblend=$660000;}
if (discovery>99)  {lvlblend=$620366;}