// scr_PUDDLE_Clear();

// This script clears the puddle surface, and should ONLY be 
// called from the "obj_PUDDLE_Control" object in your room.

// Check that the surface is being used and it exists
if puddle_on || surface_exists(puddle_surf)
{
// Clear the surface
surface_set_target(puddle_surf);
draw_clear_alpha(c_black,0);
surface_reset_target();
// Destroy puddle objects
with (obj_PUDDLE)
    {
    instance_destroy()
    }
}