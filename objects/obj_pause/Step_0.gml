/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(ord("P"))) {
 if (!pause) {
  pause = true;
  instance_deactivate_all(true);
  
 } else {
  pause = false;
  instance_activate_all();
 }
}
