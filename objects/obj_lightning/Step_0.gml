
// In the Step Event of obj_lightning
if !(started) {exit;}
alpha = 1 - (lightning_timer / lightning_duration); // Decrease alpha over time

// Increase the number of visible segments gradually
visible_segments = min(visible_segments + segment_reveal_speed, lightning_length);

if (visible_segments>=lightning_length)
{
	lightning_timer++;
if (lightning_timer >= lightning_duration) {
   alpha-=0.2;
   if (alpha<=0){instance_destroy();}
}
}