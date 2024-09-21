/// @description Insert description here
// You can write your code in this editor
if (toTarget)
{
	lightning_duration = 12; // Duration of the lightning effect in frames
	segment_reveal_speed = 3;
	lightning_length = 20;
	branch_length = 3;

	if instance_exists(oPlayer) {var obj_target=oPlayer;}
	else if instance_exists(oPlayerAttack) {var obj_target=oPlayerAttack;}
	else if instance_exists(oPlayerGod) {var obj_target=oPlayerGod;}
	else if instance_exists(oPlayerFall) {var obj_target=oPlayerFall;}	
	else if instance_exists(oPlayerCypInvi) {var obj_target=oPlayerCypInvi;}
	else if instance_exists(oPlayerCyport) {var obj_target=oPlayerCyport;}

	target_x = obj_target.x; // Replace with your target's X coordinate
	target_y = obj_target.y; // Replace with your target's Y coordinate	
	generate_lightningToTarget();
} else {
	generate_lightning();
}
started=true;