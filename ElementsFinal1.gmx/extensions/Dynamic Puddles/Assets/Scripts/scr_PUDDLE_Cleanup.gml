///scr_PUDDLE_Cleanup();

// Free the memory associated with the puddle surface

// Check if the surface is being used and exists...
if puddle_on || surface_exists(puddle_surf)
{
// Free the surface
surface_free(puddle_surf);
}