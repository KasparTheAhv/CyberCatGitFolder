///@desc image_blend for enemies
if (instance_exists(oPlayerGod)) 
{
	with (oDog)   {image_blend=c_aqua;}
	with (oDogAttack)   {image_blend=c_aqua;}
	with (oSquir) {image_blend=c_aqua;}
	with (oRat)   {image_blend=c_aqua;}
	with (oBird)  {image_blend=c_aqua;speedmod=2;}
	with (oFrog)  {image_blend=c_aqua;}
	with (oSnake)  {image_blend=c_aqua;}
	with (oBat) {image_blend=c_aqua;}
	with (oHeliLizard) {image_blend=c_aqua;}
	with (oWolfBoss) {image_blend=c_aqua;}	
	with (oWolfKid) {image_blend=c_aqua;}	
}
else
{
	with (oDog)   {if !(wet) {image_blend=c_white;}}
	with (oDogAttack) {image_blend=c_purple;}
	with (oSquir)  {image_blend=c_white;}
	with (oRat)    {image_blend=c_white;}
	with (oBird)   {image_blend=c_white;speedmod=1;}
	with (oFrog)   {image_blend=c_white;}
	with (oSnake)  {image_blend=c_white;}
	with (oBat) {image_blend=$ff65fb;}
	with (oHeliLizard) {image_blend=c_white;}
	with (oWolfBoss) {image_blend=c_white;}	
	with (oWolfKid) {image_blend=c_white;}	
}
alarm[4]=4;



