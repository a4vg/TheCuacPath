//Key bindings
nokey = keyboard_check(vk_nokey);
right = keyboard_check(vk_right);
left = keyboard_check(vk_left);
up = keyboard_check(vk_up);
down = keyboard_check(vk_down);
jump = keyboard_check_pressed(vk_space);
punch = keyboard_check_pressed(ord("Z"));
crouch_in = keyboard_check(ord("C"));
crouch_out = keyboard_check_released(ord("C"));



if (direccion = 0) image_xscale = voltear;
else if (direccion = 1) image_xscale = -voltear;

//-----------------------------------------
if (nokey) sprite_index = player;

//-----------------------------------------

if (right || left || up || down){
	sprite_index = player_walk;
}


if (right && x+player_w/2 < room_width && !place_meeting(x+player_spd,y,obj_collider)){		//Each one of these if's is for movement
	direccion = 0;																	//considering collision with the obj_collider
	x += player_spd;																//and the edges of the window
}

//-----------------------------------------

if (left && x - player_w/2 > 0 && !place_meeting(x-player_spd,y,obj_collider)){
	direccion = 1;
	x -= player_spd;
}

//-----------------------------------------

if (up && y - player_h/2 > 0 && !place_meeting(x,y-player_spd,obj_collider)){
		y -= player_spd/2;
}

//-----------------------------------------

if (down && y + player_h/2 < room_height && !place_meeting(x,y+player_spd,obj_collider)){
		y += player_spd/2;
}

//-----------------------------------------

if punch{			
	image_index=0;
	//audio_play_sound(punch_sound,0,0);
	state = player_states.punching;  //This calls the punching_script
}

//-----------------------------------------

/*
if jump && height==0 && !place_meeting(x+player_spd,y-player_h/2,obj_sub_collider){
	canjump = true;
	image_index = 0;
	sprite_index = player_jump;
	state = player_states.jumping;
}
*/


//-----------------------------------------

if crouch_in{
	player_spd = 0;
	sprite_index = player_crouch; //This changes the sprite of the player when it crouches
}
else if crouch_out{
	player_spd = movespd;
}


isDamaged = false;