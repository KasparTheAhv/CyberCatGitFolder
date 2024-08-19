newwid=widthsuurus*rectscale;
newhei=heightsuurus*rectscale;


if (cloudLeaderData)
{
	if (leaderAlpha<1) && (expanded==1) {leaderAlpha+=0.1;} else {leaderAlpha-=0.1;}
}

if (loadInd<6) {loadInd+=0.5;}else{loadInd=0;}

if (exstatsscaler>=0.99) && (disclearned==0) {
disclearned=1; ds_map_set(settingsmap,"DiscLearned",1);ds_map_secure_save(settingsmap,"settings.sav");
}

if (muutujasuund)
{
	if (ymuutuja<10) {ymuutuja+=1;} else {muutujasuund=false;}
} else {
	if (ymuutuja>0) {ymuutuja-=1;} else {muutujasuund=true;}
}

if (extrastats)
{
	exsrectscaler+=0.08;
		if (exsrectscaler>=0.99)
		{
		exstatsscaler+=0.08;
		}
} 
else
{ 
	if (exstatsscaler>0) {exstatsscaler-=0.1;}
	else
	{
		exsrectscaler-=0.1;
	}
}
exsrectscaler=clamp(exsrectscaler,0,1);
exstatsscaler=clamp(exstatsscaler,0,1);
statsscale=(exstatsscaler*0.5);
statsscale="[scale,"+string(statsscale)+"][fa_center][fa_middle]";
if (expanded==0)
{
	if (rectscale<1) {rectscale+=0.06;}
	else {
	rectscale=1;	
	if (textscaler<targetscale)
	{	
	textscaler+=0.03;
	textscale=string(textscaler);
	textscale="[scale,"+string(textscale)+"]";
	image_xscale=textscaler*5;
	image_yscale=textscaler*5;
	} else {
	image_xscale=2;
	image_yscale=2;
	textscaler=0.4;	
	textscale=string(textscaler);
	textscale="[scale,"+string(textscale)+"]";
	expanded=1;
	
	if (oneTimeCheck==false) {oneTimeCheck=true; alarm[3]=1;}
	
	}
	}
} 

if (expanded==2)
{
	if (textscaler>0) {textscaler-=0.05;
	image_xscale=textscaler*5;
	image_yscale=textscaler*5;
		textscale=string(textscaler);
	textscale="[scale,"+string(textscale)+"]";}
	else {
	image_xscale=0;
	image_yscale=0;
	textscaler=0;	
	textscale=string(textscaler);
	textscale="[scale,"+string(textscale)+"]";
	if (rectscale>0)
	{
		rectscale-=0.1;
	} else {
		rectscale=0;
		
		with(who)
		{
		if (myadunlocked==1) {image_index=0;}else {image_index=6;}	
		}
		
		instance_destroy();
	}
	}
} 
var newsca=textscaler*1.2;
textscale2="[scale,"+string(newsca)+"][fa_center][fa_middle]";
textwholemid=textscale+color+"[fa_center][fa_middle]";
textwholeleft=textscale+color+"[fa_left][fa_middle]";
