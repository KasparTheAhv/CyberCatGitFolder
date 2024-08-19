/// @desc almost perma zoom


if (oGUIBAR.zoomLevel=0.5)
{
	oGUIBAR.zoomLevel=1; 
	zoomInd=4;exit;
} 


if (oGUIBAR.zoomLevel=0.75)
{
	oGUIBAR.zoomLevel=0.5; 
	zoomInd=6;exit;
} 




if (oGUIBAR.zoomLevel=1)
{
	oGUIBAR.zoomLevel=0.75; 
	zoomInd=5;exit;
} 