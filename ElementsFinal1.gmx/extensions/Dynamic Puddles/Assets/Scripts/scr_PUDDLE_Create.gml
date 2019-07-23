///scr_PUDDLE_Create(x, y, start_scale, max_scale, colour, spread, speed, num, fade_value);

// This script creates the puddle object with the desired size and colour. It can be called 
// from any instance/object in the game as long as the "obj_PUDDLE_Control" instance is 
// already present. The arguments are:

/*
x           - create x position
y           - create y position
start_scale - the initial maximum scale of the sprite (usually something small like 0.2)
max_scale   - the maximum scale of the sprite. When reached will draw to the surface or fade out
colour      - the colour to use for the puddles
spread      - the "spread" of the puddle is a radius around the x/y position in which the puddle will be created randomly
speed       - how fast the puddle should grow and spread (normally a low value like 0.01)
num         - the number of puddle instances to create at once (min is clamped to 1)
fade_value  - the amount to remove from the alpha value for fading (usually a low number like 0.01). Only used when no surface is available or switched off
*/


// Create the local vars

var puddle_x = argument0;
var puddle_y = argument1;
var puddle_min = clamp(abs(argument2), 0, abs(argument3));
var puddle_max = abs(argument3);
var puddle_col = argument4;
var puddle_rad = argument5;
var puddle_spd = argument6;
var puddle_fad = argument8;

// Tell the controller what to draw

with (obj_PUDDLE_Control)
{
// Check for the surface
if surface_exists(puddle_surf)
    {
    // surface exists so set the initial size based on the quality value
    puddle_min /= puddle_q;
    }
}

// Now create the instance using the input arguments
repeat(max(1, argument7))
{
var p_len = random(puddle_rad)
var p_ang = random(360);
with (instance_create(puddle_x + lengthdir_x(p_len, p_ang), puddle_y + lengthdir_y(p_len, p_ang), obj_PUDDLE))
    {
    image_xscale = random(puddle_min);
    image_yscale = image_xscale;
    image_blend = puddle_col;
    spd = puddle_spd;
    max_s = puddle_max;
    fade = puddle_fad;
    }
}