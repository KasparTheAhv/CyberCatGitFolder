/// @desc
if instance_exists(oPlayer) {who=oPlayer;}
if instance_exists(oPlayerAttack) {who=oPlayerAttack;}
if instance_exists(oPlayerFall) {who=oPlayerFall;}
if instance_exists(who)
{
if (who.x>self.x) {sprite_index=sMoustacheGuyWave;image_speed=1;} else {sprite_index=sMoustacheGuy;image_speed=0;}
} else {sprite_index=sMoustacheGuy;image_speed=0;}
alarm[0]=10;