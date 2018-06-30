/// @description Insert description here
// You can write your code in this editor

if !instance_exists(obj_enemy) nextlevel=true;


if (nextlevel && place_meeting(x-5, y, boi)) {
	room_goto(targetRoom);
	boi.x = targetx;
	boi.y = targety;
}

