function generate_lightningToTarget(){
    lightning = [];
    var start_x = x; // Starting X position (middle of the object)
    var start_y = y; // Starting Y position (current Y position of the object)
    var end_x = start_x;
    var end_y = start_y;

    // Calculate the total difference in X and Y between the start and the target
    var total_dx = target_x - start_x;
    var total_dy = target_y - start_y;

    for (var i = 0; i < lightning_length; i++) {
        // Calculate the distance to the target
        var distance_to_target = point_distance(end_x, end_y, target_x, target_y);

        // Check if we are within 60 pixels of the target
        if (distance_to_target <= 60 || i == lightning_length - 1) {
            // If within 60 pixels or it's the last segment, directly hit the target
            var target_segment_x = target_x;
            var target_segment_y = target_y;
        } else {
            // Calculate where the next segment should end, moving towards the target
            var t = (i + 1) / lightning_length;
            var target_segment_x = start_x + total_dx * t + irandom_range(-max_offset, max_offset);
            var target_segment_y = start_y + total_dy * t + irandom_range(-max_offset, max_offset);
        }

        // Create the segment
        var segment = {
            x1: end_x,
            y1: end_y,
            x2: target_segment_x,
            y2: target_segment_y,
            branches: [] // Store branch segments here
        };

        end_x = segment.x2;
        end_y = segment.y2;

        // Only generate branches if we're not within 60 pixels of the target and it's not the last 2 segments
        if (distance_to_target > 60 && i < lightning_length - 2 && random(1) < branch_chance) {
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

        // If we're within 60 pixels and have hit the target, break the loop
        if (distance_to_target <= 60) {
            break;
        }
    }

    // Ensure the last segment hits the target if we broke out of the loop early
    if (point_distance(end_x, end_y, target_x, target_y) > 0) {
        var final_segment = {
            x1: end_x,
            y1: end_y,
            x2: target_x,
            y2: target_y,
            branches: []
        };
        array_push(lightning, final_segment);
    }
}



