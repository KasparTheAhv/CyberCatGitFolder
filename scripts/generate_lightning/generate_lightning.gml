
function generate_lightning() {
    lightning = [];
    var start_x = x; // Starting X position (middle of the object)
    var start_y = y; // Starting Y position (current Y position of the object)
    var end_x = start_x;
    var end_y = start_y;
    
    for (var i = 0; i < lightning_length; i++) {
        var segment = {
            x1: end_x,
            y1: end_y,
            x2: end_x + irandom_range(-max_offset, max_offset),
            y2: end_y + (lightning_height - y) / lightning_length,
            branches: [] // Store branch segments here
        };
        
        end_x = segment.x2;
        end_y = segment.y2;

        // Randomly generate branches
        if (random(1) < branch_chance) {
            var branch_end_x = segment.x2;
            var branch_end_y = segment.y2;

            for (var j = 0; j < branch_length; j++) {
                var branch_segment = {
                    x1: branch_end_x,
                    y1: branch_end_y,
                    x2: branch_end_x + irandom_range(-branch_max_offset, branch_max_offset),
                    y2: branch_end_y + irandom_range(5, 15)
                };

                branch_end_x = branch_segment.x2;
                branch_end_y = branch_segment.y2;

                array_push(segment.branches, branch_segment);
            }
        }

        array_push(lightning, segment);
    }
}