if (keyboard_check_pressed(vk_enter) && menuboi) {
  menuboi = false;
  instance_activate_all();
}

if (keyboard_check_pressed(ord("R")) && (gameover || win)) game_restart();


if !instance_exists(boi)
{
   gameover = true;
   audio_play_sound(gameover_sound,0,0);
}


if (room == BOSS && !instance_exists(obj_enemy) && instance_exists(boi)) {
	win = true;
}
