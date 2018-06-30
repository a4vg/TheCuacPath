sprite_index = player_punch; //This changes the sprite of the player when it punches
if(image_index < 3){
	with(instance_create_depth(x,y,0,obj_punch)){
		image_xscale = other.image_xscale;
		image_yscale = other.image_yscale;
		with(instance_place(x,y,obj_enemy)){
			audio_play_sound(punch_sound,0,0);
			enemy_state = obj_enemy_states.beingHit;
				show_debug_message("HIT");
				life--;
				boi.playerscore++;
					if(life == 0){
						instance_destroy();
					}
		}
	}
}else{
	state = player_states.normal;
	with(obj_enemy){
		enemy_state = obj_enemy_states.idle;
	}
}