if (image_alpha<1) {image_alpha=oLevelController.image_alpha;}
textalpha="[alpha,"+string(image_alpha)+"]";
scribble(textalpha+textwhole+string(skintokens)+" Tokens").draw(x,y+38);