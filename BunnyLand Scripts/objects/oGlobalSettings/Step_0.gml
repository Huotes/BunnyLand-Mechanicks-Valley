if instance_exists(obj_textbox){global.dialogo = true;}
if keyboard_check_pressed(vk_f2){game_restart();}
if keyboard_check_pressed(vk_f4){window_set_fullscreen(!window_get_fullscreen());}
if keyboard_check(vk_alt) and keyboard_check(vk_enter){window_set_fullscreen(!window_get_fullscreen());}
