if (sprite_index==sSealB) // fish
{
var side=sign(image_xscale);
instance_create_layer(self.x+(14*side),self.y-32,"Gun",oBulletFish);
}
alarm[3]=45;