/// @desc
if !(activated) {
draw_sprite_ext(sFountainWarn,image_index,self.x,oFollowPlayer.y,1,1,0,c_white,0.9);
	exit;}
for (var i =0; i<stack_height; i++)
{
draw_sprite_ext(sFountain2,image_index,x,y-(12*i),1,1,0,c_white,1);
}
draw_sprite_ext(sFountain,image_index,x,yy,1,1,0,c_white,1);