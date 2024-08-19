/// @desc explode pothole
// destoy particle


// image index
image_index=1;

// delete tiles
    var data = tilemap_get_at_pixel(tilemap, x, y);
        if !tile_get_empty(data)
        {
            data = tile_set_empty(data);
            tilemap_set_at_pixel(tilemap, data, x, y);
        }