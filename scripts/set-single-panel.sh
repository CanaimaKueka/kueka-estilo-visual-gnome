#!/bin/bash

# Un solo panel superior
gconftool-2 --set /apps/panel/default_setup/general/toplevel_id_list --type list --list-type=string [top_panel]
gconftool-2 --set /apps/panel/default_setup/general/object_id_list --type list --list-type=string [menu_bar_screen,browser_launcher,twitter_launcher]
gconftool-2 --set /apps/panel/default_setup/general/applet_id_list --type list --list-type=string [show_desktop,window_list,mixer,clock,notification_area]

gconftool-2 --set /apps/panel/default_setup/objects/menu_bar_screen/locked --type bool true
gconftool-2 --set /apps/panel/default_setup/objects/menu_bar_screen/object_type --type string menu-object
gconftool-2 --set /apps/panel/default_setup/objects/menu_bar_screen/position --type int 0
gconftool-2 --set /apps/panel/default_setup/objects/menu_bar_screen/toplevel_id --type string top_panel

gconftool-2 --set /apps/panel/default_setup/objects/browser_launcher/launcher_location --type string cunaguaro.desktop
gconftool-2 --set /apps/panel/default_setup/objects/browser_launcher/locked --type bool true
gconftool-2 --set /apps/panel/default_setup/objects/browser_launcher/object_type --type string launcher-object
gconftool-2 --set /apps/panel/default_setup/objects/browser_launcher/position --type int 2
gconftool-2 --set /apps/panel/default_setup/objects/browser_launcher/toplevel_id --type string top_panel

gconftool-2 --set /apps/panel/default_setup/objects/twitter_launcher/launcher_location --type string turpial.desktop
gconftool-2 --set /apps/panel/default_setup/objects/twitter_launcher/locked --type bool true
gconftool-2 --set /apps/panel/default_setup/objects/twitter_launcher/object_type --type string launcher-object
gconftool-2 --set /apps/panel/default_setup/objects/twitter_launcher/position --type int 3
gconftool-2 --set /apps/panel/default_setup/objects/twitter_launcher/toplevel_id --type string top_panel

gconftool-2 --set /apps/panel/default_setup/applets/show_desktop/bonobo_iid --type string OAFIID:GNOME_ShowDesktopApplet
gconftool-2 --set /apps/panel/default_setup/applets/show_desktop/locked --type bool true
gconftool-2 --set /apps/panel/default_setup/applets/show_desktop/position --type int 1
gconftool-2 --set /apps/panel/default_setup/applets/show_desktop/object_type --type string bonobo-applet
gconftool-2 --set /apps/panel/default_setup/applets/show_desktop/toplevel_id --type string top_panel

gconftool-2 --set /apps/panel/default_setup/applets/window_list/bonobo_iid --type string OAFIID:GNOME_WindowListApplet
gconftool-2 --set /apps/panel/default_setup/applets/window_list/locked --type bool true
gconftool-2 --set /apps/panel/default_setup/applets/window_list/position --type int 4
gconftool-2 --set /apps/panel/default_setup/applets/window_list/object_type --type string bonobo-applet
gconftool-2 --set /apps/panel/default_setup/applets/window_list/toplevel_id --type string top_panel

gconftool-2 --set /apps/panel/default_setup/applets/mixer/bonobo_iid --type string OAFIID:GNOME_MixerApplet
gconftool-2 --set /apps/panel/default_setup/applets/mixer/locked --type bool true
gconftool-2 --set /apps/panel/default_setup/applets/mixer/position --type int 5
gconftool-2 --set /apps/panel/default_setup/applets/mixer/panel_right_stick --type bool true
gconftool-2 --set /apps/panel/default_setup/applets/mixer/object_type --type string bonobo-applet
gconftool-2 --set /apps/panel/default_setup/applets/mixer/toplevel_id --type string top_panel

gconftool-2 --set /apps/panel/default_setup/applets/clock/bonobo_iid --type string OAFIID:GNOME_ClockApplet
gconftool-2 --set /apps/panel/default_setup/applets/clock/locked --type bool true
gconftool-2 --set /apps/panel/default_setup/applets/clock/prefs/show_date --type bool false
gconftool-2 --set /apps/panel/default_setup/applets/clock/position --type int 6
gconftool-2 --set /apps/panel/default_setup/applets/clock/panel_right_stick --type bool true
gconftool-2 --set /apps/panel/default_setup/applets/clock/object_type --type string bonobo-applet
gconftool-2 --set /apps/panel/default_setup/applets/clock/toplevel_id --type string top_panel

gconftool-2 --set /apps/panel/default_setup/applets/notification_area/bonobo_iid --type string OAFIID:GNOME_NotificationAreaApplet
gconftool-2 --set /apps/panel/default_setup/applets/notification_area/locked --type bool true
gconftool-2 --set /apps/panel/default_setup/applets/notification_area/position --type int 7
gconftool-2 --set /apps/panel/default_setup/applets/notification_area/panel_right_stick --type bool true
gconftool-2 --set /apps/panel/default_setup/applets/notification_area/object_type --type string bonobo-applet
gconftool-2 --set /apps/panel/default_setup/applets/notification_area/toplevel_id --type string top_panel


gconftool-2 --set /apps/panel/general/toplevel_id_list --type list --list-type=string [top_panel]
gconftool-2 --set /apps/panel/general/object_id_list --type list --list-type=string [menu_bar_screen0,browser_launcher0,twitter_launcher0]
gconftool-2 --set /apps/panel/general/applet_id_list --type list --list-type=string [show_desktop0,window_list0,mixer0,clock0,notification_area0]

gconftool-2 --set /apps/panel/objects/menu_bar_screen0/locked --type bool true
gconftool-2 --set /apps/panel/objects/menu_bar_screen0/object_type --type string menu-object
gconftool-2 --set /apps/panel/objects/menu_bar_screen0/position --type int 0
gconftool-2 --set /apps/panel/objects/menu_bar_screen0/toplevel_id --type string top_panel

gconftool-2 --set /apps/panel/objects/browser_launcher0/launcher_location --type string cunaguaro.desktop
gconftool-2 --set /apps/panel/objects/browser_launcher0/locked --type bool true
gconftool-2 --set /apps/panel/objects/browser_launcher0/object_type --type string launcher-object
gconftool-2 --set /apps/panel/objects/browser_launcher0/position --type int 2
gconftool-2 --set /apps/panel/objects/browser_launcher0/toplevel_id --type string top_panel

gconftool-2 --set /apps/panel/objects/twitter_launcher0/launcher_location --type string turpial.desktop
gconftool-2 --set /apps/panel/objects/twitter_launcher0/locked --type bool true
gconftool-2 --set /apps/panel/objects/twitter_launcher0/object_type --type string launcher-object
gconftool-2 --set /apps/panel/objects/twitter_launcher0/position --type int 3
gconftool-2 --set /apps/panel/objects/twitter_launcher0/toplevel_id --type string top_panel

gconftool-2 --set /apps/panel/applets/show_desktop0/bonobo_iid --type string OAFIID:GNOME_ShowDesktopApplet
gconftool-2 --set /apps/panel/applets/show_desktop0/locked --type bool true
gconftool-2 --set /apps/panel/applets/show_desktop0/position --type int 1
gconftool-2 --set /apps/panel/applets/show_desktop0/object_type --type string bonobo-applet
gconftool-2 --set /apps/panel/applets/show_desktop0/toplevel_id --type string top_panel

gconftool-2 --set /apps/panel/applets/window_list0/bonobo_iid --type string OAFIID:GNOME_WindowListApplet
gconftool-2 --set /apps/panel/applets/window_list0/locked --type bool true
gconftool-2 --set /apps/panel/applets/window_list0/position --type int 4
gconftool-2 --set /apps/panel/applets/window_list0/object_type --type string bonobo-applet
gconftool-2 --set /apps/panel/applets/window_list0/toplevel_id --type string top_panel

gconftool-2 --set /apps/panel/applets/mixer0/bonobo_iid --type string OAFIID:GNOME_MixerApplet
gconftool-2 --set /apps/panel/applets/mixer0/locked --type bool true
gconftool-2 --set /apps/panel/applets/mixer0/position --type int 5
gconftool-2 --set /apps/panel/applets/mixer0/panel_right_stick --type bool true
gconftool-2 --set /apps/panel/applets/mixer0/object_type --type string bonobo-applet
gconftool-2 --set /apps/panel/applets/mixer0/toplevel_id --type string top_panel

gconftool-2 --set /apps/panel/applets/clock0/bonobo_iid --type string OAFIID:GNOME_ClockApplet
gconftool-2 --set /apps/panel/applets/clock0/locked --type bool true
gconftool-2 --set /apps/panel/applets/clock0/prefs/show_date --type bool false
gconftool-2 --set /apps/panel/applets/clock0/position --type int 6
gconftool-2 --set /apps/panel/applets/clock0/panel_right_stick --type bool true
gconftool-2 --set /apps/panel/applets/clock0/object_type --type string bonobo-applet
gconftool-2 --set /apps/panel/applets/clock0/toplevel_id --type string top_panel

gconftool-2 --set /apps/panel/applets/notification_area0/bonobo_iid --type string OAFIID:GNOME_NotificationAreaApplet
gconftool-2 --set /apps/panel/applets/notification_area0/locked --type bool true
gconftool-2 --set /apps/panel/applets/notification_area0/position --type int 7
gconftool-2 --set /apps/panel/applets/notification_area0/panel_right_stick --type bool true
gconftool-2 --set /apps/panel/applets/notification_area0/object_type --type string bonobo-applet
gconftool-2 --set /apps/panel/applets/notification_area0/toplevel_id --type string top_panel

gconftool-2 --set /apps/panel/toplevels/top_panel/orientation --type string top
gconftool-2 --set /apps/panel/toplevels/disable_movement --type bool true

# reset del panel
gnome-panel --replace &
