if (image_alpha<1) {image_alpha=oLevelController.image_alpha;}
textalpha="[alpha,"+string(image_alpha)+"]";
scribble(string(textscale)+string(textalpha)+"[fa_center][fa_middle]"+string(color)+string(skintxt)).draw(x,y+38);