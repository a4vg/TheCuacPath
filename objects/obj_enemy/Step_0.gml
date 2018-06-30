/// @description Insert description here
// You can write your code in this editor

enemy_h = sprite_height;
enemy_w = sprite_width;

dir_h = sign(boi.x - x);
dir_v = sign(boi.y - y);
image_xscale = dir_h * -0.15;


switch(enemy_state){
	case obj_enemy_states.idle:
	{
		sprite_index = sprites[0];
		enemy_spd_h = 0;
		enemy_spd_v = 0;
		if(distance_to_object(boi) < 200 && distance_to_object(boi) > 30 && !place_meeting(x+enemy_spd_h,y,obj_collider) && !place_meeting(x,y+enemy_spd_v,obj_collider)) enemy_state = obj_enemy_states.chase;
	}
	break;
	case obj_enemy_states.chase:
	{
		sprite_index = sprites[1];
		enemy_spd_h = dir_h * boi.movespd / 10;
		enemy_spd_v = dir_v * boi.movespd / 10;
		if(distance_to_object(boi) < 30 || distance_to_object(boi) > 400) enemy_state = obj_enemy_states.idle;
		
	}
	break;
	case obj_enemy_states.beingHit:
	{
		sprite_index = sprites[2];
		enemy_spd_h = 0;
		enemy_spd_v = 0;
	}
	break;
	case obj_enemy_states.punch:
	{
		sprite_index = sprites[3]; //This changes the sprite of the player when it punches
		if(image_index < 2){
			with(boi){
				if(!crouch_in){
					//audio_play_sound(punch_sound,0,0);
					sprite_index = player_damaged;
					life--;
					
					if(life <= 0) {
						instance_destroy();
						instance_deactivate_object(obj_enemy);
						}
					if(image_index >= 2){
						state = player_states.normal;
					}
				}
			}
		}else if (image_index > 5){
			enemy_state = obj_enemy_states.idle;
		}
	canpunch=0;
	};break;
	
}

if(distance_to_object(boi) < 30) && canpunch>=intervalopunch{
	enemy_state = obj_enemy_states.punch;
}

if (y - enemy_h/2 > 0){							//Each one of these if's is for movement,
	if(!place_meeting(x,y-20,boi) && !place_meeting(x,y-40,obj_enemy)){				//considering collision with the obj_collider
		y += enemy_spd_v;						//and the edges of the window
	}
}
if (x + enemy_w/2 < room_width){ 
	if(!place_meeting(x+10,y,boi) && !place_meeting(x+40,y,obj_enemy)){
		x += enemy_spd_h;
	}
}
if (y + enemy_h/2 < room_height){
	if(!place_meeting(x,y+20,boi) && !place_meeting(x,y+40,obj_enemy)){
		y += enemy_spd_v;
	}
}
if (x - enemy_w/2 > 0){
	if(!place_meeting(x-20,y,boi) && !place_meeting(x-40,y,obj_enemy)){
		x += enemy_spd_h;
	}
}

if (canpunch<intervalopunch) canpunch++;

