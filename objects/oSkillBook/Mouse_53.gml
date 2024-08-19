
if !(allownext) {exit;}
if !(pageswitching) // parem leht vasakule
{
	if (curPage<maxpages)
	{
	// PRE SWITCH VARIABLES
	pageswitching=true;
	VasakBack=curPage;
	ParemBack=curPage+3;
	vascale=0;
	alarm[2]=10;
	alarm[0]=1;
	}
}