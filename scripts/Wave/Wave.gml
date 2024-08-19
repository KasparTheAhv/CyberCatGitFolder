/// @desc Wave(from, to, duration, offset,change)
/// Sript that sways between two numbers
function Wave(from, to, duration, offset,change){
a4 = (argument[1]-argument[0])*0.5;
return argument[0]+a4+sin(((((current_time+argument[4])*0.001)+argument[2]*argument[3])/argument[2])*(pi*2))*a4;
}

