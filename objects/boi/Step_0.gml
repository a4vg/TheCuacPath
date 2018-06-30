//-----------STEP

switch(state){
	case player_states.normal: normal_mov();break;
	case player_states.punching: punching_script(); break;
	//case player_states.jumping :jumping_script(); break;
	case player_states.beingHit: 
	{
		if (direccion = 0) image_xscale = voltear;
		else if (direccion = 1) image_xscale = -voltear;
		sprite_index = player_damaged;
		player_spd = 0;
	};break;
}