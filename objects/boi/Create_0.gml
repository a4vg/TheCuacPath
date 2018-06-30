// You can write your code in this editor

//States of player
enum player_states{
	normal,
	punching,
	jumping,
	beingHit,
}

state = player_states.normal;


//Variables
player_spd = 5;		//Walk speed
vspd= 5;			//Jump speed
limitpxheight = 100;	//Maximum height of jump
life = 30 * 20;		//Player hp


//NO MODIFICAR
player_w = sprite_width;
player_h = sprite_height;
player_dmg = false;
movespd = player_spd;
voltear = image_xscale;
direccion = 0; //0 right 1 left
height = 0;
i=0;
canjump=false;

//HealthBar
fulllife = life;

//Score
playerscore = 0;