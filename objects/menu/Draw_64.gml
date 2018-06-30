/// @description Insert description here
// You can write your code in this editor
camerax = camera_get_view_x(view_camera[0]);
cameray = camera_get_view_y(view_camera[0]);
cameraw = camera_get_view_width(view_camera[0]);
camerah = camera_get_view_height(view_camera[0])

centerx = camerax+cameraw/2;
centery = cameray-camerah/2;



if (menuboi){
 draw_set_color(c_black);
 draw_set_alpha(1);
 draw_rectangle(view_xport[0],view_yport[0],view_wport[0],view_hport[0],0);
 draw_set_color(c_yellow);
 draw_set_alpha(1);
 draw_text_transformed((view_wport[0]-96)/2,(view_hport[0]-96)/2,"The CUAC path", 2, 2, image_angle);
 draw_set_color(c_white);
 draw_text((view_wport[0]+96)/2,(view_hport[0]+96)/2,"hit ENTER to play");
}

if (gameover){
 draw_set_color(c_black);
 draw_set_alpha(1);
 draw_rectangle(view_xport[0],view_yport[0],view_wport[0],view_hport[0],0);
 draw_set_color(c_red);
 draw_set_alpha(1);
 draw_text_transformed((view_wport[0]-96)/2, (view_hport[0]-96)/2,"GAME OVER", 2, 2, image_angle);
 draw_set_color(c_white);
 draw_text((view_wport[0]+96)/2,(view_hport[0]+96)/2,"hit r to replay");
}

if (win){
 draw_set_color(c_black);
 draw_set_alpha(1);
 draw_rectangle(view_xport[0],view_yport[0],view_wport[0],view_hport[0],0);
 draw_set_color(c_red);
 draw_set_alpha(1);
 draw_text_transformed((view_wport[0]-96)/2, (view_hport[0]-96)/2,"YOU WON!", 2, 2, image_angle);
 draw_set_color(c_white);
 draw_text((view_wport[0]+96)/2,(view_hport[0]+96)/2,"hit r to replay");
}