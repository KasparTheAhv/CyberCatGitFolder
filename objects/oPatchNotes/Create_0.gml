///@desc CREATE EVENT
// REWRITE THE TEXT
/// @description Wrap text if lines exceed a certain width
// Set your parameters
var input_file = "patch_notes.txt";
var output_file = "patch_notes.txt";
var max_width = (global.gameWidth*0.75); // Set the desired max width in pixels

// Function to measure the width of a text string
function measure_text_width(text) {
    draw_set_font(fOrbitron);
    return string_width(text);
}

// Function to wrap a line of text
function wrap_text(line, max_width) {
    var words = string_split(line, " ");
    var wrapped_line = "";
    var current_line = "";

    for (var i = 0; i < array_length(words); i++) {
        var word = words[i];
        if (measure_text_width(current_line + word + " ") <= max_width) {
            current_line += word + " ";
        } else {
            wrapped_line += string_trim(current_line) + "#";
            current_line = word + " ";
        }
    }
    
    wrapped_line += string_trim(current_line) + "#";
    return wrapped_line;
}

// Read the file
var file = file_text_open_read(input_file);
var lines = "";
while (!file_text_eof(file)) {
    var line = file_text_read_string(file);
    file_text_readln(file);
    if (measure_text_width(line) > max_width) {
        lines += wrap_text(line, max_width);
    } else {
        lines += line + "#";
    }
} 
file_text_close(file);

// Write to the new file
var file = file_text_open_write(output_file);
var wrapped_lines = string_split(lines, "#");
for (var i = 0; i < array_length(wrapped_lines); i++) {
    file_text_write_string(file, wrapped_lines[i]);
    file_text_writeln(file);
}
file_text_close(file);


/// ACTUAL START
// Scroll Offset
scroll_offset = 0;

// Define Box Dimensions
box_x = global.gameWidth*0.07;
box_y = global.gameHeight*0.1;
box_width = global.gameWidth*0.5;
box_height = global.gameHeight*0.7;

report_x = box_x + box_width - 70;
report_y = box_y + 60;

bugChainOn=false;

// Text properties
line_height = 32; // Adjust according to your font size
patch_notes_lines = ds_list_create(); // Create the list here
// Read the text file
var file_path = "patch_notes.txt";
if (file_exists(file_path)) {
    var file = file_text_open_read(file_path);
    while (!file_text_eof(file)) {
        var current_line = file_text_readln(file);
        var words = string_split(current_line, " "); // Split line into words
        var current_width = 0;
        var formatted_line = "";

        for (var w = 0; w < array_length(words); w++) {
            var word = words[w];
            var word_width = string_width(word);
            
            if (current_width + word_width > box_width) {
                // If adding this word exceeds box width, add newline
                ds_list_add(patch_notes_lines, formatted_line);
                formatted_line = word + " ";
                current_width = word_width;
            } else {
                formatted_line += word + " ";
                current_width += word_width;
            }
        }

        ds_list_add(patch_notes_lines, formatted_line); // Add the last line
    }

    file_text_close(file);
}


//SCRIBBLE
color="[#FFFFFF]";
scale=global.gameWidth/2400*0.9;
if os_type==os_windows scale=0.5;
//textalpha="[alpha,"+string(insert_amount)+"]";
textscale="[scale,"+string(scale)+"]";