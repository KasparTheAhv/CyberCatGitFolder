/// @desc state selector

		var who =oFollowPlayer;
		if instance_exists(oPlayer) {who=oPlayer;}
		if instance_exists(oPlayerAttack) {who=oPlayerAttack;}
		
		if (who.x<self.x) {hsp=-4; image_xscale=-2; } else {hsp=4;image_xscale=2;}	
		

		canchase=false;
		current_state=titanstates.follow;
		image_speed=1;
		sprite_index=sTitanR;
		