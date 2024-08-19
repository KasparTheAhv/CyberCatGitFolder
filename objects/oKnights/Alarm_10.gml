/// @desc
if instance_exists(oPlayer)
{
	
		var texter="I think I heard rocks rumbling...";
		with (instance_create_layer(self.x,self.y-50,"Particles",oTextFloat))
		{
		timer=80;
		target=instance_nearest(x,y,oPlayer);
		text = texter;
		length = string_length(text);
		}		
		
		 var data = tilemap_get_at_pixel(tilemap, 1360, 815);
        if !tile_get_empty(data)
        {
            data = tile_set_empty(data);
            tilemap_set_at_pixel(tilemap, data, 1360, 815);
        }
		
			 var data = tilemap_get_at_pixel(tilemap, 1360, 847);
        if !tile_get_empty(data)
        {
            data = tile_set_empty(data);
            tilemap_set_at_pixel(tilemap, data, 1360, 847);
        }
		
				 var data = tilemap_get_at_pixel(tilemap, 1360, 879);
        if !tile_get_empty(data)
        {
            data = tile_set_empty(data);
            tilemap_set_at_pixel(tilemap, data, 1360, 879);
        }
					 var data = tilemap_get_at_pixel(tilemap, 1360, 911);
        if !tile_get_empty(data)
        {
            data = tile_set_empty(data);
            tilemap_set_at_pixel(tilemap, data, 1360, 911);
        }
		
		var lay_id = layer_get_id("City");
		layer_set_visible(lay_id,true);
		
		if (oGUIBAR.task3=="")
		{
		oGUIBAR.task3="- Investigate mountain";
		oGUIBAR.alarm[1]=2;
		}
		
} else {

alarm[10]=5;
}