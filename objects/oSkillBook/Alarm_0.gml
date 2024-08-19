///@desc turn page from right to left
if (pascale>0)
{
pascale-=myscale*0.2;
alarm[0]=1;
}
else
{ 
ParemFront=curPage+3;
VasakFront=curPage+2;
VasakBack=curPage;



if (vascale>-1*myscale)
{
vascale-=myscale*0.2;
alarm[0]=1;		
} else {
alarm[1]=1;exit;
}

}