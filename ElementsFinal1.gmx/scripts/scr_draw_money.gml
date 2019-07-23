///scr_draw_wall(side, color)
var side = argument[0];
var w = sprite_xoffset;
var h = sprite_yoffset;
draw_set_color(argument[1]);
var tex =background_get_texture(bg_money);

switch (side) {

    case "right":
    draw_primitive_begin_texture(pr_trianglestrip, tex);
    draw_vertex_texture(top_x+w, top_y-h,0,0);
    draw_vertex_texture(x+w, y-h,1,0)
    draw_vertex_texture(x+w, y+h,1,1);
    draw_vertex_texture(top_x+w, top_y+h,0,1);
    draw_vertex_texture(top_x+w, top_y-h,0,0);
    draw_primitive_end();
    break;
    
    case "left":
    draw_primitive_begin_texture(pr_trianglestrip, tex);
    draw_vertex_texture(top_x-w, top_y-h,0,0);
    draw_vertex_texture(x-w, y-h,1,0)
    draw_vertex_texture(x-w, y+h,1,1);
    draw_vertex_texture(top_x-w, top_y+h,0,1);
    draw_vertex_texture(top_x-w, top_y-h,0,0);
    draw_primitive_end();
    
    break;
    
    case "top":
    draw_primitive_begin_texture(pr_trianglestrip, tex);
    draw_vertex_texture(top_x-w, top_y-h,0,0);
    draw_vertex_texture(top_x+w, top_y-h,1,0)
    draw_vertex_texture(x+w, y-h,1,1);
    draw_vertex_texture(x-w,y-h,0,1);
    draw_vertex_texture(top_x-w, top_y-h,0,0);
    draw_primitive_end();
    break;
    
    case "bottom":
    draw_primitive_begin_texture(pr_trianglestrip, tex);
    draw_vertex_texture(top_x-w, top_y+h,0,0);
    draw_vertex_texture(top_w+w, yop_y+h,1,0)
    draw_vertex_texture(x+w, y+h,1,1);
    draw_vertex_texture(x-w, y+h,0,1);
    draw_vertex_texture(top_x-w, top_y+h,0,0);
    draw_primitive_end();
    break;
}
