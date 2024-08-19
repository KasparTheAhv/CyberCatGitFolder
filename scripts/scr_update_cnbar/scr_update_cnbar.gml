// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_update_cnbar(){
if show_cn<red_cn
{
	red_cn-=(max_cn/35);
}

if cn!=show_cn
{
	show_cn+=(cn-show_cn)*0.1;
}

if show_cn>=red_cn
{
	red_cn=show_cn-0.2;
}

if cn>max_cn
{
	cn=max_cn;
}


index2+=0.2;

cn=clamp(cn,0,150);


}