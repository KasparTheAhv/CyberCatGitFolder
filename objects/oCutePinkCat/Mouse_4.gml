/// @desc
if !CatIsNearClick(){exit;}
if instance_exists(oText) or instance_exists(oTextFloat) {exit;}

			UnlockNoteEgg("Egg",3);
			var texter="Dayum, gurl. That gyat!";
			with (instance_create_layer(self.x,self.y-50,"Particles",oTextFloat))
			{
			timer=120;
			target=other;
			text = texter;
			length = string_length(text);
			}	