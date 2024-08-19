/// @desc
var many = choose(1,2);
if (many==1)
{
instance_create_layer(x,y+5,"Characters",oSnake);
} else {
instance_create_layer(x+5,y+5,"Characters",oSnake);
instance_create_layer(x-5,y+5,"Characters",oSnake);
}