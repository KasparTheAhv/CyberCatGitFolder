/// @description Insert description here
// You can write your code in this editor
if (current_state=states.wander){dire=irandom_range(0,359);current_state=states.stay;} else if (current_state=states.stay) {image_speed=1;dire=irandom_range(0,359);current_state=states.wander;}
xrandom=irandom_range(-20,20);
yrandom=irandom_range(-20,20);
alarm[0]=40;