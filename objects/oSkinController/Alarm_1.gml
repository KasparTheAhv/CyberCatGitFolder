/// @desc
showbutton=true;
// buy button txt

if (buyindex!=8) && (buyindex!=13)
{
with(instance_create_layer(buybuttonX,buybuttonY,"text",oBuyTxt))
	{
	skintxt=other.skinprice;	
	textscale=other.textscale2;
	textalpha=other.textalpha;
	color=other.coloure;	
	textwhole=string(textscale)+"[fa_center][fa_middle]"+string(color)+string(skintxt);
	}
}

