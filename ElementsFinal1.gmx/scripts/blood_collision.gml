///blood_collision(object)

if collision_circle(x,y,.5,argument[0],0,1)
{/*
    if collide = false
    {
    }*/

        //this code is for when the blood object hits the object in arument[0]
        collide = true
        speed = 0
    direction +=random_range(-45,45)
    gravity =0
    speed = 0
    width -=.05
    alpha +=.01
    //this is where it draws to a surface
    surface_set_target(global.blood_surf)
    draw_set_alpha(alpha)
    draw_set_color(color)
    draw_circle(x,y,width,0)
    draw_set_alpha(.8)
    surface_reset_target()
/*
    if gravity <=0 or alpha = 0 or width <= 0
    {
        instance_destroy()
    }
*/

}
