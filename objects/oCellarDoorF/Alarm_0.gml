/// @desc
        var data = tilemap_get_at_pixel(tilemap, x+20, y);
        if !tile_get_empty(data)
        {
            data = tile_set_empty(data);
            tilemap_set_at_pixel(tilemap, data, x+20, y);
        }
		    var data = tilemap_get_at_pixel(tilemap, x-20, y);
        if !tile_get_empty(data)
        {
            data = tile_set_empty(data);
            tilemap_set_at_pixel(tilemap, data, x-20, y);
        }