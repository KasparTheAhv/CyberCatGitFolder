/// @desc

if !(charged) { exit;}
if (CatIsNearClick())
{
	charged=false;
	curitem+=1;
	var	item=0;
	var keysid=0;
	var mom=false;
	var hat=false;	
	if (curitem=0)		 { var keysid=1;		       	 } // key1
	if (curitem=1)		 { var hat=true;			  } // hat
	if (curitem=2)		 { var item=choose(1,2,3); } // randomitem
	if (curitem=3)		 { var keysid=2;		       		 } // key 2

	if !(bossdead)
	{
		if (curitem>=4)		 {  var item=choose(1,2,3); } 
	} else {
		var mom =true;
	}

// spawning 	
	if (mom==true)
	{
	 instance_create_layer(x,y,"Dog",oMom);
	exit; // because nothing else matters	
	}

	if (item!=0) // what enemy
	{
		if (item==1) {instance_create_layer(x,y,"Dog",oDog);}
		if (item==2) {instance_create_layer(x,y,"Characters",oPenquin);}
		if (item==3) {repeat(2) {instance_create_layer(x,y,"Characters",oSnake);}}
	}

	if (hat==true)
	{
		var whathat=irandom_range(0,11);
		with (instance_create_layer(x,y,"Dog",oHat))
		{
		image_index=whathat;	
		}
	}
	
	if (keysid!=0) // what enemy
	{
		with (instance_create_layer(x,y,"Characters",oKey))
		{
		keyid=keysid;
		if (keyid==0) {image_blend=c_yellow;}
		if (keyid==1) {image_blend=c_red;}
		if (keyid==2) {image_blend=c_aqua;}
		if (keyid==3) {image_blend=c_lime;}
		if (keyid==4) {image_blend=c_blue;}
		}
	}
}