/*switch(os_type)
{
case os_macosx:
case os_windows:
case os_linux:
case os_win8native:
cur_width = max(1,window_get_width());
cur_height = max(1,window_get_height());
break;
case os_ios:
case os_android:
case os_winphone:
case os_tizen:
cur_width = max(1,window_get_width());
cur_height = max(1,window_get_height());
break;
}




var ratio = cur_width / cur_height;

if cur_width < cur_height{
    view_wview[0] = median(min_height, cur_height, room_height);
    view_hview[0] = view_hview[0] * ratio;
    }else{
    view_wview[0] = median(min_width, cur_width, room_width);
    view_hview[0] = view_wview[0] / ratio;
    }
view_wport[0] = cur_width;
view_hport[0] = cur_height;

surface_resize(application_surface, view_wview[0],view_hview[0]);
*/
