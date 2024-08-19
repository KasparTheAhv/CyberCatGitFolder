draw_set_alpha(1);
draw_self();

if (movegod)
{
	draw_sprite_ext(sprite,godInd,xx,yy,0.75,0.75,0,c_white,1);	
	draw_sprite_ext(spriteGun,0,xx,yy,0.75,0.75,0,c_white,1);	
}