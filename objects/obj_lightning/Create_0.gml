// In the Create Event of obj_lightning
// delete in indoor rooms
if (room==Room0)	{instance_destroy();} 
if (room==Room9)	{instance_destroy();} 
if (room==Room12)	{instance_destroy();} 
if (room==Room23)	{instance_destroy();} 
if (room==Room24)	{instance_destroy();} 
if (room==Room25)	{instance_destroy();} 
if (room==Room32)	{instance_destroy();} 


started=false;

lightning = [];
lightning_length = 15; // Number of main segments
max_offset = 45; // Maximum offset for each main segment
colorLight=c_red;
branch_chance = 0.65; // Chance that a branch will appear after each segment
branch_length = 5; // Number of segments in each branch
branch_max_offset = 35; // Maximum offset for each branch segment


alpha = 1; // Initial alpha value (fully opaque)
segment_reveal_speed = 1; // How many segments to reveal per frame
lightning_height=650; //


lightning_duration = 20; // Duration of the lightning effect in frames
lightning_timer = 0;
visible_segments = 0; // Start with no segments visible


toTarget=false;



alarm[1]=1;

