///draw_silhouette()
surface_set_target(surface);

draw_clear(c_black);
d3d_set_fog(true,c_white,0,1);
with (obj_player){
draw_self();
}
with (obj_head){
draw_self();
}
with (obj_cape_top){
draw_self();
}
with (obj_cape_middle){
draw_self();
}
with (obj_cape_bottom){
draw_self();
}
d3d_set_fog(false,c_white,0,0);
with (obj_tree_shilouette) {
draw_sprite_ext(sprite_index, image_index, x,y,image_xscale,image_yscale,image_angle, c_black,.5); 
}
surface_reset_target();
shader_set(shd_leave_gray);
draw_surface(surface,0,0);
shader_reset();

