///scr_PUDDLE_Init(enable, quality)

// This script initialises the puddle surface and sets a couple of 
// instance variables required for it. All instance variable are 
// suffixed by "puddle_" to minimise possible naming conflicts. The 
// script has some auto checking proceedures that will try to re-create 
// the surface if it is found not to exist, lowering the quality if 
// necessary.

// Create the instance vars

puddle_q = clamp(argument1, 1, 10); // Clamp the puddle quality from 1 to 10
puddle_on = argument0;              // Controls the drawing as either to the surface or as instances
puddle_surf = -1;                   // This will hold the surface ID

// Check to see if the surface method is being used
if puddle_on
{
// Create the surface
puddle_surf = surface_create(room_width / puddle_q, room_height / puddle_q);
// Debug and check that the surface exists
var i = 0;
while (!surface_exists(puddle_surf) && i < 10)
    {
    // Surface doesn't exist so lower the quality and try again
    if puddle_q < 10 puddle_q++;
    puddle_surf = surface_create(room_width / puddle_q, room_height / puddle_q);
    i++;
    }
// Check to see if this time we created a surface
if i >= 10 || !surface_exists(puddle_surf)
    {
    // We didn't so give up
    puddle_on = false;
    puddle_surf = -1;
    }
else
    {
    // Surface exists so clear it ready for using
    surface_set_target(puddle_surf);
    draw_clear_alpha(c_black,0);
    surface_reset_target();
    }
}
