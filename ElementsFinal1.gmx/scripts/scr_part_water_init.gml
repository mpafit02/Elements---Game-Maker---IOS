/// scr_part_fire_init
global.pt_water = part_type_create();
var pt = global.pt_water;

part_type_shape(pt, pt_shape_disk);
part_type_scale(pt,0.25,0.25);
part_type_size(pt, .75, .25, 0, 0);
part_type_color3(pt,c_aqua,c_navy,c_blue );
part_type_speed(pt, 1, 3, 0, 0);
part_type_direction(pt, 0, 360, 0, 0);
part_type_blend(pt, 1);
part_type_life(pt, 4, 8);
part_type_alpha2(pt, 1, .75);
part_type_gravity(pt,0.02,90);
