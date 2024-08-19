
if (stage==0)
{
if (self.y<gHh){self.y+=20*global.scaler;} else {self.y=gHh;stage=1;alarm[2]=10;}
draw_sprite_ext(sBookCover,1,x,y,myscale,myscale,0,c_white,1);
} 
if (stage==1)
{	
if (self.x<gWh){self.x+=20*global.scaler; self.x=floor(x);} else {self.x=gWh;stage=2;}
draw_sprite_ext(sBookCover,1,x,y,myscale,myscale,0,c_white,1);
}

if (stage==2)
{
draw_sprite_ext(sBookCover,0,x,y,myscale,myscale,0,c_white,1);

draw_sprite_ext(sBookPages,ParemBack,x,y,backpascale,image_yscale,0,c_white,1);	 //parem tagumine

draw_sprite_ext(sBookPages,ParemFront,x,y,pascale,image_yscale,0,c_white,1); //parem

//draw_sprite_ext(sBookPages,VasakBack,x,y,backvascale,image_yscale,0,c_white,1);	 //vasak tagumine





if (coverscale<0)
{
	draw_sprite_ext(sBookCover,coverimage,x,y,coverscale,myscale,0,c_white,1);
	draw_sprite_ext(sBookPages,VasakFront,x,y,coverscale,image_yscale,0,c_white,1);	 //vasak		
	coverimage=0;
} else {
	draw_sprite_ext(sBookPages,VasakFront,x,y,coverscale,image_yscale,0,c_white,1);	 //vasak		
draw_sprite_ext(sBookCover,coverimage,x,y,coverscale,myscale,0,c_white,1);
	
}
	
if (coverscale>-1*myscale) {coverscale-=0.2*myscale;} else {coverscale=-1*myscale; stage=3;}
}

if (stage==3)
{
draw_sprite_ext(sBookCover,0,x,y,myscale,myscale,0,c_white,1);
draw_sprite_ext(sBookCover,0,x,y,-1*myscale,1*myscale,0,c_white,1);
draw_sprite_ext(sBookPages,ParemBack,x,y,backpascale,image_yscale,0,c_white,1);	 //parem tagumine
draw_sprite_ext(sBookPages,ParemFront,x,y,pascale,image_yscale,0,c_white,1); //parem
draw_sprite_ext(sBookPages,VasakBack,x,y,backvascale,image_yscale,0,c_white,1);	 //vasak tagumine
draw_sprite_ext(sBookPages,VasakFront,x,y,vascale,image_yscale,0,c_white,1);	 //vasak
}


