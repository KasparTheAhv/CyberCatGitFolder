///@desc Total and discovery 
discovery=noone;
var settingsmap=ds_map_secure_load("settings.sav");



if (watchad) {
	
	image_index=7;
	if (global.isAndroid)
	{
	if !(global.unityRDY) {adtext="Need internet\nconnection\nto continue";
		image_index=8;
		}
	}
	exit;}

// easter eggs and discovery

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
discoverynotes=note1+note2;
discoverynotes=string(discoverynotes)+"/2"
discoveryeggs=egg1+egg2;
discoveryeggs=string(discoveryeggs)+"/2";
discovery=((note1+note2+egg1+egg2)/4)*100;
//egg and note color
var notes=discoverynotes/2;
notes=notes*100;
var eggs=discoveryeggs/2;
eggs=eggs*100;
}

if (actuallevel==1)
{
var note1=ds_map_find_value(settingsmap,"Room1Note1");
if is_undefined(note1) {note1=0;}
var note2=ds_map_find_value(settingsmap,"Room1Note2");
if is_undefined(note2) {note2=0;}
var egg1=ds_map_find_value(settingsmap,"Room1Egg1");
if is_undefined(egg1) {egg1=0;}
discoverynotes=note1+note2;
discoverynotes=string(discoverynotes)+"/2"
discoveryeggs=egg1;
discoveryeggs=string(discoveryeggs)+"/1";
discovery=((note1+note2+egg1)/3)*100;
//egg and note color
var notes=discoverynotes/2;
notes=notes*100;
var eggs=discoveryeggs/1;
eggs=eggs*100;
}

if (actuallevel==2)
{
var note1=ds_map_find_value(settingsmap,"Room2Note1");
if is_undefined(note1) {note1=0;}
var note2=ds_map_find_value(settingsmap,"Room2Note2");
if is_undefined(note2) {note2=0;}
var egg1=ds_map_find_value(settingsmap,"Room2Egg1");
if is_undefined(egg1) {egg1=0;}
discoverynotes=note1+note2;
discoverynotes=string(discoverynotes)+"/2"
discoveryeggs=egg1;
discoveryeggs=string(discoveryeggs)+"/1";
discovery=((note1+note2+egg1)/3)*100;
//egg and note color
var notes=discoverynotes/2;
notes=notes*100;
var eggs=discoveryeggs/1;
eggs=eggs*100;
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
discoverynotes=note1+note2+note3;
discoverynotes=string(discoverynotes)+"/3"
discoveryeggs=egg1+egg2;
discoveryeggs=string(discoveryeggs)+"/2";
discovery=((note1+note2+note3+egg1+egg2)/5)*100;
//egg and note color
var notes=discoverynotes/3;
notes=notes*100;
var eggs=discoveryeggs/2;
eggs=eggs*100;
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
discoverynotes=note1+note2+note3;
discoverynotes=string(discoverynotes)+"/3"
discoveryeggs=egg1+egg2+egg3;
discoveryeggs=string(discoveryeggs)+"/3";
discovery=((note1+note2+note3+egg1+egg2+egg3)/6)*100;
//egg and note color
var notes=discoverynotes/3;
notes=notes*100;
var eggs=discoveryeggs/3;
eggs=eggs*100;
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
discoverynotes=note1+note2+note3+note4+note5+note6;
discoverynotes=string(discoverynotes)+"/6"
discoveryeggs=egg1+egg2+egg3+egg4;
discoveryeggs=string(discoveryeggs)+"/4";
discovery=((note1+note2+note3+note4+note5+note6+egg1+egg2+egg3+egg4)/10)*100;
//egg and note color
var notes=discoverynotes/6;
notes=notes*100;
var eggs=discoveryeggs/4;
eggs=eggs*100;
}
if (actuallevel==6)
{
var note1=ds_map_find_value(settingsmap,"Room6Note1");
if is_undefined(note1) {note1=0;}
var egg1=ds_map_find_value(settingsmap,"Room6Egg1");
if is_undefined(egg1) {egg1=0;}
discoverynotes=note1;
discoverynotes=string(discoverynotes)+"/1";
discoveryeggs=egg1;
discoveryeggs=string(discoveryeggs)+"/1";
discovery=((note1+egg1)/2)*100;
//egg and note color
var notes=discoverynotes/1;
notes=notes*100;
var eggs=discoveryeggs/1;
eggs=eggs*100;
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
discoverynotes=note1+note2;
discoverynotes=string(discoverynotes)+"/2"
discoveryeggs=egg1+egg2;
discoveryeggs=string(discoveryeggs)+"/2";
discovery=((note1+note2+egg1+egg2)/4)*100;
//egg and note color
var notes=discoverynotes/2;
notes=notes*100;
var eggs=discoveryeggs/2;
eggs=eggs*100;
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
discoverynotes=note1+note2+note3;
discoverynotes=string(discoverynotes)+"/3"
discoveryeggs=egg1+egg2+egg3;
discoveryeggs=string(discoveryeggs)+"/3";
discovery=((note1+note2+note3+egg1+egg2+egg3)/6)*100;
//egg and note color
var notes=discoverynotes/3;
notes=notes*100;
var eggs=discoveryeggs/3;
eggs=eggs*100;
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
discoverynotes=note1+note2+note3;
discoverynotes=string(discoverynotes)+"/3"
discoveryeggs=egg1+egg2+egg3+egg4;
discoveryeggs=string(discoveryeggs)+"/4";
discovery=((note1+note2+note3+egg1+egg2+egg3+egg4)/7)*100;
//egg and note color
var notes=discoverynotes/3;
notes=notes*100;
var eggs=discoveryeggs/4;
eggs=eggs*100;
}

if (actuallevel==10)
{
var note1=ds_map_find_value(settingsmap,"Room10Note1");
if is_undefined(note1) {note1=0;}
var note2=ds_map_find_value(settingsmap,"Room10Note2");
if is_undefined(note2) {note2=0;}
var egg1=ds_map_find_value(settingsmap,"Room10Egg1");
if is_undefined(egg1) {egg1=0;}

discoverynotes=note1+note2;
discoverynotes=string(discoverynotes)+"/2"
discoveryeggs=egg1;
discoveryeggs=string(discoveryeggs)+"/1";
discovery=((note1+note2+egg1)/3)*100;
//egg and note color
var notes=discoverynotes/2;
notes=notes*100;
var eggs=discoveryeggs/1;
eggs=eggs*100;
}
if (actuallevel==11)
{
var note1=ds_map_find_value(settingsmap,"Room11Note1");
if is_undefined(note1) {note1=0;}
var note2=ds_map_find_value(settingsmap,"Room11Note2");
if is_undefined(note2) {note2=0;}
var egg1=ds_map_find_value(settingsmap,"Room11Egg1");
if is_undefined(egg1) {egg1=0;}

discoverynotes=note1+note2;
discoverynotes=string(discoverynotes)+"/2"
discoveryeggs=egg1;
discoveryeggs=string(discoveryeggs)+"/1";
discovery=((note1+note2+egg1)/3)*100;
//egg and note color
var notes=discoverynotes/2;
notes=notes*100;
var eggs=discoveryeggs/1;
eggs=eggs*100;
}
if (actuallevel==12)
{
var note1=ds_map_find_value(settingsmap,"Room12Note1");
if is_undefined(note1) {note1=0;}
var note2=ds_map_find_value(settingsmap,"Room12Note2");
if is_undefined(note2) {note2=0;}
var egg1=ds_map_find_value(settingsmap,"Room12Egg1");
if is_undefined(egg1) {egg1=0;}

discoverynotes=note1+note2;
discoverynotes=string(discoverynotes)+"/2"
discoveryeggs=egg1;
discoveryeggs=string(discoveryeggs)+"/1";
discovery=((note1+note2+egg1)/3)*100;
//egg and note color
var notes=discoverynotes/2;
notes=notes*100;
var eggs=discoveryeggs/1;
eggs=eggs*100;
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
discoverynotes=note1+note2;
discoverynotes=string(discoverynotes)+"/2"
discoveryeggs=egg1+egg2+egg3;
discoveryeggs=string(discoveryeggs)+"/3";
discovery=((note1+note2+egg1+egg2+egg3)/5)*100;
//egg and note color
var notes=discoverynotes/2;
notes=notes*100;
var eggs=discoveryeggs/3;
eggs=eggs*100;
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
discoverynotes=note1+note2;
discoverynotes=string(discoverynotes)+"/2"
discoveryeggs=egg1+egg2;
discoveryeggs=string(discoveryeggs)+"/2";
discovery=((note1+note2+egg1+egg2)/4)*100;
//egg and note color
var notes=discoverynotes/2;
notes=notes*100;
var eggs=discoveryeggs/2;
eggs=eggs*100;
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
discoverynotes=note1+note2;
discoverynotes=string(discoverynotes)+"/2"
discoveryeggs=egg1+egg2+egg3+egg4;
discoveryeggs=string(discoveryeggs)+"/4";
discovery=((note1+note2+egg1+egg2+egg3+egg4)/6)*100;
//egg and note color
var notes=discoverynotes/2;
notes=notes*100;
var eggs=discoveryeggs/3;
eggs=eggs*100;
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
discoverynotes=note1+note2;
discoverynotes=string(discoverynotes)+"/2"
discoveryeggs=egg1+egg2+egg3;
discoveryeggs=string(discoveryeggs)+"/3";
discovery=((note1+note2+egg1+egg2+egg3)/5)*100;
//egg and note color
var notes=discoverynotes/2;
notes=notes*100;
var eggs=discoveryeggs/3;
eggs=eggs*100;
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
discoverynotes=note1+note2;
discoverynotes=string(discoverynotes)+"/2"
discoveryeggs=egg1+egg2;
discoveryeggs=string(discoveryeggs)+"/2";
discovery=((note1+note2+egg1+egg2)/4)*100;
//egg and note color
var notes=discoverynotes/2;
notes=notes*100;
var eggs=discoveryeggs/2;
eggs=eggs*100;
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
discoverynotes=note1+note2;
discoverynotes=string(discoverynotes)+"/2"
discoveryeggs=egg1+egg2;
discoveryeggs=string(discoveryeggs)+"/2";
discovery=((note1+note2+egg1+egg2)/4)*100;
//egg and note color
var notes=discoverynotes/2;
notes=notes*100;
var eggs=discoveryeggs/2;
eggs=eggs*100;
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
discoverynotes=note1+note2;
discoverynotes=string(discoverynotes)+"/2"
discoveryeggs=egg1+egg2+egg3;
discoveryeggs=string(discoveryeggs)+"/3";
discovery=((note1+note2+egg1+egg2+egg3)/5)*100;
//egg and note color
var notes=discoverynotes/2;
notes=notes*100;
var eggs=discoveryeggs/3;
eggs=eggs*100;
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
discoverynotes=note1+note2+note3;
discoverynotes=string(discoverynotes)+"/3"
discoveryeggs=egg1+egg2+egg3+egg4+egg5;
discoveryeggs=string(discoveryeggs)+"/5";
discovery=((note1+note2+note3+egg1+egg2+egg3+egg4+egg5)/8)*100;
//egg and note color
var notes=discoverynotes/3;
notes=notes*100;
var eggs=discoveryeggs/5;
eggs=eggs*100;
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
discoverynotes=note1+note2;
discoverynotes=string(discoverynotes)+"/2"
discoveryeggs=egg1+egg2;
discoveryeggs=string(discoveryeggs)+"/2";
discovery=((note1+note2+egg1+egg2)/4)*100;
//egg and note color
var notes=discoverynotes/2;
notes=notes*100;
var eggs=discoveryeggs/2;
eggs=eggs*100;
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
discoverynotes=note1+note2;
discoverynotes=string(discoverynotes)+"/2"
discoveryeggs=egg1+egg2;
discoveryeggs=string(discoveryeggs)+"/2";
discovery=((note1+note2+egg1+egg2)/4)*100;
//egg and note color
var notes=discoverynotes/2;
notes=notes*100;
var eggs=discoveryeggs/2;
eggs=eggs*100;
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
discoverynotes=note1+note2+note3+note4;
discoverynotes=string(discoverynotes)+"/4"
discoveryeggs=egg1+egg2+egg3+egg4;
discoveryeggs=string(discoveryeggs)+"/4";
discovery=((note1+note2+note3+note4+egg1+egg2+egg3+egg4)/8)*100;
//egg and note color
var notes=discoverynotes/4;
notes=notes*100;
var eggs=discoveryeggs/4;
eggs=eggs*100;
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

discoverynotes=note1+note2+note3+note4;
discoverynotes=string(discoverynotes)+"/4"
discoveryeggs=egg1+egg2+egg3;
discoveryeggs=string(discoveryeggs)+"/3";
discovery=((note1+note2+note3+note4+egg1+egg2+egg3)/7)*100;
//egg and note color
var notes=discoverynotes/4;
notes=notes*100;
var eggs=discoveryeggs/3;
eggs=eggs*100;
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


discoverynotes=note1+note2+note3+note4;
discoverynotes=string(discoverynotes)+"/4"
discoveryeggs=egg1+egg2;
discoveryeggs=string(discoveryeggs)+"/2";
discovery=((note1+note2+note3+note4+egg1+egg2)/6)*100;
//egg and note color
var notes=discoverynotes/4;
notes=notes*100;
var eggs=discoveryeggs/2;
eggs=eggs*100;
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

discoverynotes=note1+note2+note3;
discoverynotes=string(discoverynotes)+"/3"
discoveryeggs=egg1+egg2+egg3+egg4+egg5+egg6;
discoveryeggs=string(discoveryeggs)+"/6";
discovery=((note1+note2+note3+egg1+egg2+egg3+egg4+egg5+egg6)/9)*100;
//egg and note color
var notes=discoverynotes/3;
notes=notes*100;
var eggs=discoveryeggs/6;
eggs=eggs*100;
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


discoverynotes=note1+note2+note3+note4;
discoverynotes=string(discoverynotes)+"/4"
discoveryeggs=egg1+egg2+egg3;
discoveryeggs=string(discoveryeggs)+"/3";
discovery=((note1+note2+note3+note4+egg1+egg2+egg3)/7)*100;
//egg and note color
var notes=discoverynotes/4;
notes=notes*100;
var eggs=discoveryeggs/3;
eggs=eggs*100;
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


discoverynotes=note1+note2+note3+note4;
discoverynotes=string(discoverynotes)+"/4"
discoveryeggs=egg1+egg2+egg3;
discoveryeggs=string(discoveryeggs)+"/3";
discovery=((note1+note2+note3+note4+egg1+egg2+egg3)/7)*100;
//egg and note color
var notes=discoverynotes/4;
notes=notes*100;
var eggs=discoveryeggs/3;
eggs=eggs*100;
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


discoverynotes=note1+note2+note3;
discoverynotes=string(discoverynotes)+"/3"
discoveryeggs=egg1+egg2;
discoveryeggs=string(discoveryeggs)+"/2";
discovery=((note1+note2+note3+egg1+egg2)/5)*100;
//egg and note color
var notes=discoverynotes/3;
notes=notes*100;
var eggs=discoveryeggs/2;
eggs=eggs*100;
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


discoverynotes=note1+note2+note3;
discoverynotes=string(discoverynotes)+"/3"
discoveryeggs=egg1+egg2;
discoveryeggs=string(discoveryeggs)+"/2";
discovery=((note1+note2+note3+egg1+egg2)/5)*100;
//egg and note color
var notes=discoverynotes/3;
notes=notes*100;
var eggs=discoveryeggs/2;
eggs=eggs*100;
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


discoverynotes=note1+note2+note3;
discoverynotes=string(discoverynotes)+"/3"
discoveryeggs=egg1+egg2;
discoveryeggs=string(discoveryeggs)+"/2";
discovery=((note1+note2+note3+egg1+egg2)/5)*100;
//egg and note color
var notes=discoverynotes/3;
notes=notes*100;
var eggs=discoveryeggs/2;
eggs=eggs*100;
}


/////////////// discovery end colors /////////////////
if (notes>=0) {notecolor="[#FF1919]";}
if (notes>25) {notecolor="[#FFF432]";}
if (notes>99) {notecolor="[#17F432]";}
if (eggs>=0) {eggcolor="[#FF1919]";}
if (eggs>25) {eggcolor="[#FFF432]";}
if (eggs>99) {eggcolor="[#17F432]";}
if (discovery>=0)  {disccolor="[#FF1919]";}
if (discovery>25)  {disccolor="[#FFF432]";}
if (discovery>99)  {disccolor="[#17F432]";}

if (os_type==os_android)
{
alarm[2]=240;
} else {alarm[2]=1;}

