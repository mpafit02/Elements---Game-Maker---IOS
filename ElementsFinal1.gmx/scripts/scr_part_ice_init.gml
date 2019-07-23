/// scr_part_ice_init
global.pt_ice = part_type_create();
var pt = global.pt_ice;

part_type_shape(pt, pt_shape_snow);
part_type_size(pt, .075, .25, 0, 0);
part_type_color3(pt, c_white, c_aqua, c_blue);
part_type_speed(pt, 1, 3, 0, 0);
part_type_direction(pt, 0, 360, 0, 0);
part_type_blend(pt, true);
part_type_life(pt, 4, 8);
part_type_alpha2(pt, 1, .5);
