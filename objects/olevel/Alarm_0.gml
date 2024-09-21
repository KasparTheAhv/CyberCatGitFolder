///@desc LEVEL / DISCOVERY SETTING
//calculate positioning




if (levelnr==999) 
{
whereto=RoomMenu;
actuallevel="BACK";
image_index=3;
self.x=rW*0.05;
self.y=rH*0.7;
exit;	
}

// asukoht
var howmanyinrow=8;
var calc1=(oLevelController.chapter-1)*32;
var calc2 = levelnr-calc1;
mitmesrida=calc2/howmanyinrow;
mitmesrida=ceil(mitmesrida);
mitmestulp=calc2-mitmesrida*howmanyinrow;
mitmestulp=howmanyinrow+(mitmestulp);
xmodifier=0.05+(0.1*mitmestulp);
ymodifier=0+(0.2*mitmesrida);
self.x=rW*xmodifier;
self.y=rH*ymodifier;



// If it's unlocked
actuallevel=levelnr-1;
if (actuallevel<=maxlvl) {unlocked=true;}

// HERE YOU CHANGE MAXLEVELS SHOWN.
for (var i=0;i<128;i++) {
	
	var roomAssetName="Room"+string(i);
	if (asset_get_index(roomAssetName)==-1) {break;}
	var existingLvls=i;
}

// if room doesnt exists set it to not unlocked and set image of coming soon
if (actuallevel>existingLvls) 
{
	unlocked=false;image_index=4;
	discovery=0;
} else {
	// if room exists, get its discovery information
	whatvar = "Room"+string(actuallevel);
	whereto = asset_get_index(whatvar);
	discovery=0;
	
	// easter eggs and discovery
	var returnedArray = DiscoveryStats(actuallevel);
	// string for notes
	discoverynotes=returnedArray[0];
	// string for eggs
	discoveryeggs=returnedArray[1];
	// discovery %
	discovery=returnedArray[2];
	show_debug_message(returnedArray);
	
	/////////////// discovery end colors /////////////////
	if (discovery>=0)  {lvlblend=$666600;}
	if (discovery>25)  {lvlblend=$660000;}
	if (discovery>99)  {lvlblend=$620366;}	
}

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

if (actuallevel>=36) && (actuallevel<=39)
{myadunlocked=oLevelController.block1;myblock=1;}
if (actuallevel>=40) && (actuallevel<=43)
{myadunlocked=oLevelController.block2;myblock=2;}
if (actuallevel>=44) && (actuallevel<=47)
{myadunlocked=oLevelController.block3;myblock=3;}
if (actuallevel>=48) && (actuallevel<=51)
{myadunlocked=oLevelController.block4;myblock=4;}
if (actuallevel>=52) && (actuallevel<=55)
{myadunlocked=oLevelController.block5;myblock=5;}
if (actuallevel>=56) && (actuallevel<=59)
{myadunlocked=oLevelController.block6;myblock=6;}
if (actuallevel>=60) && (actuallevel<=63)
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

