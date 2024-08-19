if (myboss!=noone)
{
if (type==0)
{
		draw_sprite_ext(sBOSS_HEALTH,image_index,x,y,image_xscale,image_yscale,0,c_white,image_alpha);
		draw_sprite_ext(sBossIcons,bossindex,picX,y,image_xscale,image_yscale,0,c_white,image_alpha);
		if (cnbarOn) {draw_sprite_ext(sBossCn,catNip,xx,yy,image_xscale,image_yscale,0,c_white,image_alpha);}
		if (image_index==0) // 2 elu
		{
				if (mobElud==2)
				{
				draw_sprite_ext(sBossHeart,0,hp1x,y,image_xscale,image_yscale,0,c_white,image_alpha);
				draw_sprite_ext(sBossHeart,0,hp2x,y,image_xscale,image_yscale,0,c_white,image_alpha);
				exit;
				} 
				if (mobElud==1)
				{
				draw_sprite_ext(sBossHeart,0,hp1x,y,image_xscale,image_yscale,0,c_white,image_alpha);
				exit;
				}
				
		}
		if (image_index==1) // 3 elu
		{
				if (mobElud==3)
				{
				draw_sprite_ext(sBossHeart,0,hp1x,y,image_xscale,image_yscale,0,c_white,image_alpha);
				draw_sprite_ext(sBossHeart,0,hp2x,y,image_xscale,image_yscale,0,c_white,image_alpha);
				draw_sprite_ext(sBossHeart,0,hp3x,y,image_xscale,image_yscale,0,c_white,image_alpha);
				exit;
				}
				if (mobElud==2)
				{
				draw_sprite_ext(sBossHeart,0,hp1x,y,image_xscale,image_yscale,0,c_white,image_alpha);
				draw_sprite_ext(sBossHeart,0,hp2x,y,image_xscale,image_yscale,0,c_white,image_alpha);
				exit;
				} 
				if (mobElud==1)
				{
				draw_sprite_ext(sBossHeart,0,hp1x,y,image_xscale,image_yscale,0,c_white,image_alpha);
				exit;
				}
		}
		if (image_index==2) // 4 elu
		{
				if (mobElud==4)
				{
				draw_sprite_ext(sBossHeart,0,hp1x,y,image_xscale,image_yscale,0,c_white,image_alpha);
				draw_sprite_ext(sBossHeart,0,hp2x,y,image_xscale,image_yscale,0,c_white,image_alpha);
				draw_sprite_ext(sBossHeart,0,hp3x,y,image_xscale,image_yscale,0,c_white,image_alpha);
				draw_sprite_ext(sBossHeart,0,hp4x,y,image_xscale,image_yscale,0,c_white,image_alpha);
				exit;
				}
				
				if (mobElud==3)
				{
				draw_sprite_ext(sBossHeart,0,hp1x,y,image_xscale,image_yscale,0,c_white,image_alpha);
				draw_sprite_ext(sBossHeart,0,hp2x,y,image_xscale,image_yscale,0,c_white,image_alpha);
				draw_sprite_ext(sBossHeart,0,hp3x,y,image_xscale,image_yscale,0,c_white,image_alpha);
				exit;
				}
				if (mobElud==2)
				{
				draw_sprite_ext(sBossHeart,0,hp1x,y,image_xscale,image_yscale,0,c_white,image_alpha);
				draw_sprite_ext(sBossHeart,0,hp2x,y,image_xscale,image_yscale,0,c_white,image_alpha);
				exit;
				} 
				if (mobElud==1)
				{
				draw_sprite_ext(sBossHeart,0,hp1x,y,image_xscale,image_yscale,0,c_white,image_alpha);
				exit;
				}
		}

	} else {
		draw_sprite_ext(sBOSS_HEALTH,4,x,y,image_xscale,image_yscale,0,c_white,image_alpha);
		draw_set_alpha(image_alpha);
		draw_rectangle_color(rx1,ry1,rx2,ry2,c_lime,c_lime,c_lime,c_lime,false);
		draw_set_alpha(1);
		draw_sprite_ext(sBOSS_HEALTH,3,x,y,image_xscale,image_yscale,0,c_white,image_alpha);
		draw_sprite_ext(sBossIcons,bossindex,picX,y,image_xscale,image_yscale,0,c_white,image_alpha);
		
	}
}