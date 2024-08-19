
			target=noone;
			if instance_exists(oPlayer){target=oPlayer;}
			if instance_exists(oPlayerAttack){target=oPlayerAttack;}
			if (target!=noone) {
			
			oGUIBAR.cn=149;
			if (oGUIBAR.cn>=149)
			{
				if !instance_exists(oLightning)
				{
				global.noheal=true;
				instance_create_layer(target.x,target.y,"Particles",oLightning);
				}
			}	
			} else {self.alarm[7]=2;}
