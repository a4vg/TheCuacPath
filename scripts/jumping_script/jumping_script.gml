right = keyboard_check(vk_right);
left = keyboard_check(vk_left);

//--Para moverse y voltear mientras salta---
if (direccion = 0) image_xscale = voltear;
else if (direccion = 1) image_xscale = -voltear;

if (right && x+player_w/2 < room_width && !place_meeting(x+player_spd,y+player_h/2,obj_sub_collider)){		//Each one of these if's is for movement
	direccion = 0;																	//considering collision with the obj_collider
	x += player_spd;																//and the edges of the window
}

else if (left && x - player_w/2 > 0 && !place_meeting(x-player_spd,y+player_h/2,obj_sub_collider)){
	direccion = 1;
	x -= player_spd;
}

//-----------------------------------------


//Subiendo
if height<limitpxheight/vspd && height>=0 && canjump {
	image_index = 0;
	y-=vspd; height++;
	
}



//Bajando
else if (height>=limitpxheight/vspd || !canjump) && height>0 {
	
	y+=vspd; height--; 
	image_index = 2;
	canjump=false;
	//if !place_meeting(x,y+player_h/2,obj_sub_collider) {height=0; state=player_states.normal;}
}


//En la cima
if height==limitpxheight/vspd {image_index = 1; }


//Justo antes de tocar el piso
if height==0 && !canjump {
	state=player_states.normal;
}