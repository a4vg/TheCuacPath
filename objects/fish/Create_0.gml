/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
enemySpeed =  2.5 //boi.player_spd/2;
sprites[4] = [];
enemy_state = obj_enemy_states.idle;
life = 21 * 5;

sprites[0] = fish_idle;
sprites[1] = fish_walk;
sprites[2] = fish_beingHit;
sprites[3] = fish_punch;

intervalopunch = 20;
canpunch = intervalopunch;