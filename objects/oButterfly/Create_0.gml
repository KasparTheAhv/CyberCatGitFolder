/// @desc SETUP
sprite_index=choose(sButterfly,sButterflyGrey);

if (sprite_index==sButterflyGrey)
{
	image_blend=choose($ffff5e,$ffa87f,$9aff4c,$65faff,$b765ff,$ff8cb8,$6565ff,$dd16e5);
}
luba=false;
image_speed=2;
// 
speed=1;
mainDirection=0;
dirChange =0; 
neededDirection=0;
goFlower=false;
dirChange2=0;
//  check if player near flower and me also
alarm[2]=120;
colorChange=0;
headBlend=c_white;

tmap = layer_tilemap_get_id("Collision");