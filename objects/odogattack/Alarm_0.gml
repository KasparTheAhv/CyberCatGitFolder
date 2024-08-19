sprite_index=sDogD;

if instance_exists(oPlayerTarget) && (helper==false){target=oPlayerTarget;}



if (distance_to_object(target)<=130)
{
phase=2;
alarm[10]=60;
self.image_angle=direction;
move_towards_point(target.x,target.y,7);
exit;
}
else {phase=1;}



