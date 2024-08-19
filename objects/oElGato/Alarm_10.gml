
if !instance_exists(oText)
{
alarm[0]=1; // activate 
instance_create_layer(1,1,"Particles",oBossHP);
with(oSwordDoor)
{
activated=true;	
}
} else {alarm[10]=2;}