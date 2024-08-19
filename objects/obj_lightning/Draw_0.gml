if !(started) {exit;}
// In the Draw Event of obj_lightning
draw_set_alpha(alpha); // Set the current alpha value
draw_set_color(colorLight); // Set the color of the lightning

// Ensure we do not exceed the length of the lightning array
var max_segments = min(visible_segments, array_length(lightning));

for (var i = 0; i < max_segments; i++) {
    var segment = lightning[i];
    // Draw the main segment
    draw_line_width(segment.x1, segment.y1, segment.x2, segment.y2, 2);
    
    // Draw the branches
    for (var j = 0; j < array_length(segment.branches); j++) {
        var branch = segment.branches[j];
        draw_line(branch.x1, branch.y1, branch.x2, branch.y2);
    }
}
draw_set_color(c_white);
// Reset the alpha after drawing
draw_set_alpha(1);