/// @desc
if instance_exists(oPlayer) {oFollowPlayer.target=oPlayer;}
if instance_exists(oPlayerAttack) {oFollowPlayer.target=oPlayerAttack;}
if instance_exists(oPlayerGod) {oFollowPlayer.target=oPlayerGod;oFollowPlayer.allowedcam=true;oGUIBAR.alcam=true; }
if instance_exists(oPlayerFall) {oFollowPlayer.target=oPlayerFall;}

with (oPlayer) {alarm[4]=1;}
with (oPlayerAttack) {immune=false;}
with (oPlayerGod) {immune=false;}