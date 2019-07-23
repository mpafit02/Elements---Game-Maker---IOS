///scr_PUDDLE_Draw();

// This script is only called from the "obj_PUDDLE_Control" instance and 
// draws all our puddles (note that the puddle object itself has the "visible" 
// flag set to false in the object properties). It will detect whether you are 
// using surface drawing or instances automatically. You should also be aware 
// that the result will be slightly different when using instances to that 
// seen when using the surface, due to the different blend modes required (the 
// surface has an alpha component to consider, while the application surface 
// that instances draw to does not).

// Create local var for quality

var q = puddle_q;

// Switch on alpha testing. This is required to remove some of the image alpha 
// artefacts that can be seen when sprites are drawn overlapping

draw_set_alpha_test(true);
draw_set_alpha_test_ref_value(16);

// Now check for the surface and that the option to draw to it is true

if surface_exists(puddle_surf) && puddle_on
{
// We are drawing to the surface, so set the correct blend modes
draw_set_blend_mode_ext(bm_inv_dest_alpha, bm_inv_src_color);
// Now draw the result to the surface, echecking it exists first
if surface_exists(puddle_surf)
    {
    // Note we set the blend mode and the surface once only before looping through 
    // the puddle objects. this saves texture swaps and batches, helping performance
    surface_set_target(puddle_surf);
    // Draw the puddles using the values set when we created them, taking quality into account
    with (obj_PUDDLE)
        {
        // Check the xscale
        if image_xscale < (max_s / q) - (0.01 / q)
            {
            // The puddle is growing so increase the scale
            image_xscale += sin(1 - (image_xscale / (max_s / q))) * (spd / q);
            image_yscale = image_xscale;
            }
        else
            {
            // The maximum scale has been reached
            image_xscale = max_s / q;
            image_yscale = image_xscale;
            }
        // Draw the sprite
        draw_sprite_ext(sprite_index, image_index, x / q, y / q, image_xscale, image_yscale, image_angle, image_blend, image_alpha); //Draw sprite to surface...
        // Since we have drawn it to the surface and it has reached the maximum size, 
        // we can now destroy the instance and keep the instance count to a mimimum
        if image_xscale >= max_s / q
            {
            instance_destroy();
            }
        }
    surface_reset_target();
    }
}
else
{
// We are using the instance fade method for the puddles so set the required blend mode
draw_set_blend_mode_ext(bm_normal, bm_inv_src_colour);
with (obj_PUDDLE)
    {
    // We are using an inverse source colour, so to get the correct hue shown we need to reverse it
    var hue = colour_get_hue(image_blend);
    var sat = colour_get_saturation(image_blend);
    var val = colour_get_value(image_blend);
    var h = hue - 128;
    // Set the desired hue for the effect
    image_blend = make_colour_hsv(h, sat, val);
    // Check the xscale
    if image_xscale < max_s
        {
        // Scale up as we haven't reached the max scale
        image_xscale += sin(1 - (image_xscale / max_s)) * spd;
        image_yscale = image_xscale;
        }
    else
        {
        // We have reached the max scale, so fade the instance out
        image_alpha -= fade;
        if image_alpha <= 0
            {
            // Instance faded to zero, so destroy it
            instance_destroy();
            }
        }
    // Draw the instance to the screen
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
    // Reset the image blend to the original value
    image_blend = make_colour_hsv(hue, sat, val);
    }
}

// Reset the blend mode and alpha test values
draw_set_blend_mode(bm_normal);
draw_set_alpha_test(false);

// Now draw the surface if it exists and is switched on...
if puddle_on
{
if surface_exists(puddle_surf)
    {
    draw_surface_ext(puddle_surf, 0, 0,puddle_q, puddle_q, 0, c_white, 1);
    }
else
    {
    // Surface doesn't exist, yet puddles are on, so re-initialise and try again
    scr_PUDDLE_Init(puddle_on, puddle_q);
    }
}