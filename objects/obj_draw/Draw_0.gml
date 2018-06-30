/// @description 
// You can write your code in this editor

camerax = camera_get_view_x(view_camera[0]);
cameray = camera_get_view_y(view_camera[0]);
cameraw = camera_get_view_width(view_camera[0]);
camerah = camera_get_view_height(view_camera[0])

centerx = camerax+cameraw/2;
centery = cameray-camerah/2;


//HealthBar
if instance_exists(boi){
	draw_sprite(HealthBar, 1, camera_get_view_x(view_camera[0])+34 , camera_get_view_y(view_camera[0])+27)			//Back (la roja)
	draw_sprite_ext(HealthBar, 2, camera_get_view_x(view_camera[0])+34 , camera_get_view_y(view_camera[0])+27, boi.life/boi.fulllife, 1,0,c_white,1)		//Inner (la verde)
	draw_sprite(HealthBar, 0, camera_get_view_x(view_camera[0])+20 , camera_get_view_y(view_camera[0])+20)			//El marco



//Score
draw_text(centerx-10, camera_get_view_y(view_camera[0])+20, "SCORE" + string(boi.playerscore));

}