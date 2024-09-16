/// @description Insert description here
// You can write your code in this editor
if (global.booktutsequence!=0)
{
	// joonista esimese click nupp
	if (global.booktutsequence==1)	
	{
		draw_sprite_ext(sArrow,0,global.gameWidth*0.1,global.gameHeight*0.35-arrowYmod,1,1,270,c_white,1);
	} 
	if (global.booktutsequence==2)	
	{
		draw_sprite_ext(sArrow,0,global.gameWidth*0.2,global.gameHeight*0.35-arrowYmod,1,1,270,c_white,1);
	}
	if (global.booktutsequence==3)	
	{
		draw_sprite_ext(sArrow,0,global.gameWidth*0.95,global.gameHeight*0.09+muutuja-arrowYmod,1,1,90,c_white,1);
	}
}