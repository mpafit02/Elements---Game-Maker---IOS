/// scr_part_fire_init
global.pt_bigball = part_type_create();
var pt = global.pt_bigball;

part_type_shape(pt, pt_shape_ring);
part_type_size(pt, .1, 0.8, 0, 0);
part_type_color3(pt, c_orange, c_maroon,c_navy);
part_type_speed(pt, 1, 3, 0, 0);
part_type_direction(pt, 0, 360, 0, 0);
part_type_blend(pt, true);
part_type_life(pt, 4, 8);
part_type_alpha2(pt, 1, .4);
