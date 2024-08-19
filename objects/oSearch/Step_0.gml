/// @description Insert description here
// You can write your code in this editor
if (searchOpen)
{
if (message!=keyboard_string) {alarm[2]=2;}		
if (rectY<rectYtarget) {rectY+=5;}	
if (texty<textYtarget) {texty+=5;}		
} else {
//if (keyboard_string!="")
//{
//message="";
//keyboard_string="";	
//maxfindings=0;
//}
if (rectY>-50) {rectY-=5;}	
if (texty>-100) {texty-=5;}		
}


if (string_length(keyboard_string)<limit) 
    message = keyboard_string;
else
    keyboard_string = message;
	
if keyboard_virtual_status() {
    sKeyboardInput = message; //COPY VIRTUAL KEYBOARD INPUT TO STRING
  // if keyboard_check_pressed(vk_enter) {
  //     keyboard_virtual_hide(); //CLOSE VIRTUAL KEYBOARD
  //     keyboard_string = ""; //RESET VIRTUAL KEYBOARD DATA
   //     }
    }



