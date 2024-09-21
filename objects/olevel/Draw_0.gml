// vajalik et tile ilusti joonistaks ( dunno why tbh )

if (levelnr==999)
{
	if !(instance_exists(oLevelGo)) {draw_self();}
} else {
	draw_self(); 
}

if (unlocked)
{
	draw_sprite_ext(sLevelImages,levelnr,x,y,picscale,picscale,0,c_white,1);
	//draw_tile(TileLevels,levelnr,0,x-32,y-32);
}

if (drawName)
{
	if (slots==1)
	{
	draw_sprite_ext(sLevelNr,slot1index,slotX,slotY,image_xscale,image_xscale,0,lvlblend,1);	
	} else {
	draw_sprite_ext(sLevelNr,slot1index,slotX,slotY,image_xscale,image_xscale,0,lvlblend,1);		
	draw_sprite_ext(sLevelNr,slot2index,slotX2,slotY,image_xscale,image_xscale,0,lvlblend,1);
	}	
}

