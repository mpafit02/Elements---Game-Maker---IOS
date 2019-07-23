/// scr_enemy_chase

// Move towards the target
spd = maxspd;
if (instance_exists(obj_player)) and global.shield=false {
    dir = point_direction(x, y, obj_player.x, obj_player.y);
} else {
    state = scr_enemy_wander;
}

motion_add(dir, .5);
if (speed > spd) {
    speed = spd;
}

// Control the animation speed
image_speed = .25;
