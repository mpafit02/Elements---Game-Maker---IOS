///blood_spawn(x,y,direction,speed,gravity,colour,width,alpha)
/*
i = instance_create(argument[0],argument[1],obj_blood)*/
direction = 0
speed = 0
gravity = argument[4]
color = argument[5]
width = argument[6]
alpha = argument[7]
collide = false


surface_set_target(global.blood_surf)
draw_sprite_ext(choose(spr_blood_splat,spr_blood_splat2,spr_blood_splat3,spr_blood_splat4,spr_blood_splat5,spr_blood_splat6),0,x,y,2,2,random(360),choose(c_red,c_maroon),.85)
global.blood = 1;
surface_reset_target()
