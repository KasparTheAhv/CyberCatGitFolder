if (cur_state==gatosta.stand)
{
	draw_self();
	draw_sprite_ext(sElSword,0,swox,swoy,image_xscale,sword_yscale,swodir,c_white,1);
}

if (cur_state==gatosta.fly) // sword y-31
{
	draw_sprite_ext(sElGatoFly,0,x,y,image_xscale,image_yscale,image_angle,c_white,1);	
	draw_sprite_ext(sElSword,1,swox,swoy,swoxscale,swoyscale,swodir,c_white,1);			
}

if (cur_state==gatosta.shoot)
{
	draw_self();
}
