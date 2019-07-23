///blood_spawn(x,y,direction,speed,gravity,colour,width,alpha)

i = instance_create(argument[0],argument[1],obj_blood)
i.direction = argument[2]
i.speed = argument[3]
i.gravity = argument[4]
i.color = argument[5]
i.width = argument[6]
i.alpha = argument[7]
i.collide = false
