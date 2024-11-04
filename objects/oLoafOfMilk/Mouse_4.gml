/// @desc
if (CatIsNearClick())
{
instance_create_layer(oPlayer.x,oPlayer.y,"Train",oNippy);
instance_destroy(self);
oGUIBAR.hp+=10;
}