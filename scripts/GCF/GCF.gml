// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
// script gcf(argument[0],argument[1])
function GCF()
{
var a=abs(argument[0]);
var b=abs(argument[1]);
var new_a;
var new_b;

while (a!=b && a!=0 && b!=0)
{
new_a=a mod b;
new_b=b mod a;
a=new_a;
b=new_b;
}

return max(a,b);
}