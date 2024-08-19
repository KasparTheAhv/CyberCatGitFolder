/// @desc TextFloat
if (instance_exists(oPatchNotes)) {exit;}

with (instance_create_layer(self.x,self.y-80,layer,oTextFloat))
		{
		whasound=99999;
		target=other.id;
		text = other.text;
		length = string_length(text);
		}