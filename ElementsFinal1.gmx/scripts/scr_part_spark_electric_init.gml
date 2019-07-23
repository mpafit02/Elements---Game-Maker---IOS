/// scr_part_spark_init
global.pt_spark_electric = part_type_create();
var pt = global.pt_spark_electric;

part_type_shape(pt, pt_shape_spark);
part_type_size(pt, .3, .8, 0, 0);
part_type_color2(pt, c_orange,c_maroon);
part_type_speed(pt, 1, 2, 0, 0);
part_type_direction(pt, 0, 360, 0, 0);
part_type_blend(pt, true);
part_type_life(pt, 3, 6);
part_type_alpha2(pt, 1, 0.6);
