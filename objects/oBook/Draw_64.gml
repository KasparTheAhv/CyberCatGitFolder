/// @description Insert description here
// You can write your code in this editor
if (joonista) {draw_sprite_ext(sBook,image_index,x,y,image_xscale*extrasca,image_yscale*extrasca,0,image_blend,global.AL);}

if (state)
{
if !(instance_exists(oSkillBook))
{
scribble(string(textscale)+"[fOrbitronBigOut][fa_center][fa_middle]"+string(color)+"PURR BOOKS").draw(textX,textY);
}
muutuja=global.GUI*70;
self.y=round(testGuiH*0.07)+muutuja;
scale=(0.5+2*global.GUI)*scaler;
image_xscale=scale;
image_yscale=scale;
}