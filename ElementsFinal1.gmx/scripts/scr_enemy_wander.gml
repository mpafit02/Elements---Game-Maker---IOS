/// scr_enemy_wander
if (alarm[0] == -1) {
    dir = random(360);
    spd = choose(maxspd, maxspd/2, 0);
    alarm[0] = 120;
}

// Make sure we should move before moving
if (spd > 0) {
    motion_add(dir, .1);
    if (speed > spd) {
        speed = spd;
    }
}

// Control the animation speed
if (speed > 0) {
   image_speed = .25;
} else {
    image_speed = 0; 
}

// Change to the chase state
if (instance_exists(obj_player)) {
    if (point_distance(x, y, obj_player.x, obj_player.y) < sight) {
        state = scr_enemy_chase;
    }
}
