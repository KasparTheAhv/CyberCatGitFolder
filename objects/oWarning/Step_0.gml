view_xview=	camera_get_view_x(view_camera[0]);
view_yview=	camera_get_view_y(view_camera[0]);
view_wview=	camera_get_view_width(view_camera[0]);
view_hview=	camera_get_view_height(view_camera[0]);

if !instance_exists(src) {instance_destroy(self);exit;}
if !instance_exists(dst) {instance_destroy(self);exit;}
var sx, sy, tx, ty, dx, dy, vx, vy, vl;
sx = src.x; sy = src.y // source position
tx = dst.x; ty = dst.y-alter; // destination position
dx = tx - sx; dy = ty - sy // difference
vl = sqrt(dx * dx + dy * dy) // distance
if (vl != 0) {
    vx = dx / vl; vy = dy / vl
} else {
    vx = 0; vy = 0;
}
if (vl > inner * 2) {
    vl -= inner
    image_alpha = 1
} else {
    image_alpha = max(0, (vl - inner) / inner)
    vl /= 2
}

if (vy < 0) {
    vl = min(vl, ((view_yview + pad) - sy) / vy)
} else if (vy > 0) {
    vl = min(vl, ((view_yview + view_hview - pad) - sy) / vy)
}
if (vx < 0) {
    vl = min(vl, ((view_xview + pad) - sx) / vx)
} else if (vx > 0) {
    vl = min(vl, ((view_xview + view_wview - pad) - sx) / vx)
}
x = sx + vx * vl
y = sy + vy * vl