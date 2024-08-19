//STEP EVENT
if !instance_exists(grapPoint) {instance_destroy(); exit;}

switch (state) {
    case 0:
   
            ropeAngleVelocity = 0;
            grappleX = grapPoint.x;
            grappleY = grapPoint.y;
            ropeX = x;
            ropeY = y;
            ropeAngle = point_direction(grappleX,grappleY,x,y);
            ropeLength = point_distance(grappleX,grappleY,x,y);
            state = 1;
      
        break;
    case 1:
        grappleX = grapPoint.x;
        grappleY = grapPoint.y;
        var ropeAngleAccel = weirdAccel * dcos(ropeAngle);
        ropeAngleAccel += (segmentSpeed * grapPoint.hsp) * angleFlop;
        ropeAngleVelocity += ropeAngleAccel;
        ropeAngle += ropeAngleVelocity;
        ropeAngleVelocity *= stopAccel;
        ropeX = grappleX + lengthdir_x(ropeLength,ropeAngle);
        ropeY = grappleY + lengthdir_y(ropeLength,ropeAngle);
        ropeAngle = clamp(ropeAngle, 140, 400);
        hsp = ropeX - x;
        vsp = ropeY - y;
         image_angle = point_direction(x,y,grapPoint.x,grapPoint.y)+360;
		if (imangle<image_angle) {
		imangle += 2; } else {imangle-=2;}
        break;
}

x += hsp;
y += vsp;