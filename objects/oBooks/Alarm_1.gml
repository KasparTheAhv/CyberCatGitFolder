//@desc gui pressed
if (unlocked)
{
	var whatbook=actualbook;
	
	if (whatbook==0)
	{
	var page=0;
	var minpage=0;
	var maxpage=0;
		if (global.booktutsequence!=0)
		{
			if (global.booktutsequence==1) {global.booktutsequence=2;}
		}
	}
	if (whatbook==1)
	{
		var page=2;
		var minpage=2;
		var maxpage=2;
		if (global.booktutsequence!=0)
		{
			if (global.booktutsequence==1) {exit;}
			if (global.booktutsequence==2) {global.booktutsequence=3;}
		}
	}
	if (whatbook==2)
	{
	var page=4;
	var minpage=4;
	var maxpage=4;
	}
	if (whatbook==3)
	{
	var page=6;
	var minpage=6;
	var maxpage=6;
	}
	if (whatbook==4)
	{
	var page=8;
	var minpage=8;
	var maxpage=8;
	}
	if (whatbook==5)
	{
	var page=10;
	var minpage=10;
	var maxpage=12;
	}
	if (whatbook==6)
	{
	var page=14;
	var minpage=14;
	var maxpage=14;
	}
	if (whatbook==7)
	{
	var page=16;
	var minpage=16;
	var maxpage=16;
	}
	if (whatbook==8)
	{
	var page=18;
	var minpage=18;
	var maxpage=18;
	}
	if (whatbook==9)
	{
	var page=20;
	var minpage=20;
	var maxpage=20;
	}
	instance_destroy(oBooks);
	instance_destroy(oBookController);
	
	
	
	
	
	with(instance_create_layer(x,y,"Characters",oSkillBook))
	{
	curPage=page;
	minpages=minpage;
	maxpages=maxpage;
	VasakBack=curPage;
	VasakFront=curPage;
	ParemBack=curPage+3;
	ParemFront=curPage+1;
	pageswitching=false;
	}
}