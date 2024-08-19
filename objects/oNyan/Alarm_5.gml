if (self.count>0) {self.count-=1; alarm[5]=60;
	if instance_exists(oNyanback) {oNyanback.count=self.count;}
	
	var chance=irandom_range(0,5);
	draw_rectangle(xx-rexmod,yy-reymod,xx+rexmod,yy+reymod2,true);
	var whx=xx+rexmod+pisuty;
	var why=irandom_range(yy-reymod+25,yy+reymod2-25);
	if (chance>=1) {
	instance_create_layer(whx,why,"BefEdge",oAsteroid);
	
	if (count==25)
	{
	instance_create_layer(whx,yy+reymod2-25,"BefEdge",oAsteroid);	
	instance_create_layer(whx,yy-reymod+25,"BefEdge",oAsteroid);	
	}
	if (count==15)
	{
	instance_create_layer(whx,yy+reymod2-35,"BefEdge",oAsteroid);
	instance_create_layer(whx,yy,"BefEdge",oAsteroid);
	instance_create_layer(whx,yy-reymod+35,"BefEdge",oAsteroid);	
	}
	if (count==10)
	{
	instance_create_layer(whx,yy+reymod2-55,"BefEdge",oAsteroid);	
	instance_create_layer(whx,yy-reymod+55,"BefEdge",oAsteroid);	
	}
	if (count==5)
	{
	instance_create_layer(whx,yy+reymod2-25,"BefEdge",oAsteroid);	
	instance_create_layer(whx,yy-reymod+25,"BefEdge",oAsteroid);	
	}
	}
	
	} else {
		self.showeaster=true;
	instance_destroy(oCyberCat);
	count="\n\n Good job! \n\n You received 1 catnip!"
	oGUIBAR.cn+=25;
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Egg1";
			var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=true;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	oNyanback.count=self.count;
	drawreward=true;
	}
	
