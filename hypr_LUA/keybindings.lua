------------------------
---- KEYBINDINGS (FR) ---
------------------------

-- See https://wiki.hypr.land/Configuring/Keywords/
local mainMod = "SUPER" -- Sets "Windows" key as main modifier

-- Example binds, see https://wiki.hypr.land/Configuring/Basics/Binds/ for more
hl.bind(mainMod .. " + T",     hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + Q",     hl.dsp.window.kill())
hl.bind(mainMod .. " + M",     hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch exit"))
hl.bind(mainMod .. " + E",     hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + F",     hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + R",     hl.dsp.exec_cmd(menu))
hl.bind(mainMod .. " + P",     hl.dsp.layout("pseudo"))         -- dwindle
hl.bind(mainMod .. " + J",     hl.dsp.layout("togglesplit"))    -- dwindle
hl.bind(mainMod .. " + space", hl.dsp.exec_cmd("vicinae toggle"))
hl.bind(mainMod .. " + V",     hl.dsp.exec_cmd("vicinae vicinae://extensions/vicinae/clipboard/history"))
hl.bind(mainMod .. " + L",     hl.dsp.exec_cmd("hyprlock"))
hl.bind(mainMod .. " + B",     hl.dsp.exec_cmd("zen-browser"))

-- Move focus with mainMod + arrow keys
hl.bind(mainMod .. " + left",  hl.dsp.window.move_focus("l"))
hl.bind(mainMod .. " + right", hl.dsp.window.move_focus("r"))
hl.bind(mainMod .. " + up",    hl.dsp.window.move_focus("u"))
hl.bind(mainMod .. " + down",  hl.dsp.window.move_focus("d"))

-- Workspaces (AZERTY layout)
hl.bind(mainMod .. " + ampersand",   hl.dsp.workspace.focus(1),  { locked = true })
hl.bind(mainMod .. " + eacute",      hl.dsp.workspace.focus(2),  { locked = true })
hl.bind(mainMod .. " + quotedbl",    hl.dsp.workspace.focus(3),  { locked = true })
hl.bind(mainMod .. " + apostrophe",  hl.dsp.workspace.focus(4),  { locked = true })
hl.bind(mainMod .. " + parenleft",   hl.dsp.workspace.focus(5),  { locked = true })
hl.bind(mainMod .. " + egrave",      hl.dsp.workspace.focus(6),  { locked = true })
hl.bind(mainMod .. " + minus",       hl.dsp.workspace.focus(7),  { locked = true })
hl.bind(mainMod .. " + underscore",  hl.dsp.workspace.focus(8),  { locked = true })
hl.bind(mainMod .. " + ccedilla",    hl.dsp.workspace.focus(9),  { locked = true })
hl.bind(mainMod .. " + agrave",      hl.dsp.workspace.focus(10), { locked = true })

-- Send to Workspaces
hl.bind(mainMod .. " + SHIFT + ampersand",   hl.dsp.window.move({ workspace = 1  }), { locked = true })
hl.bind(mainMod .. " + SHIFT + eacute",      hl.dsp.window.move({ workspace = 2  }), { locked = true })
hl.bind(mainMod .. " + SHIFT + quotedbl",    hl.dsp.window.move({ workspace = 3  }), { locked = true })
hl.bind(mainMod .. " + SHIFT + apostrophe",  hl.dsp.window.move({ workspace = 4  }), { locked = true })
hl.bind(mainMod .. " + SHIFT + parenleft",   hl.dsp.window.move({ workspace = 5  }), { locked = true })
hl.bind(mainMod .. " + SHIFT + egrave",      hl.dsp.window.move({ workspace = 6  }), { locked = true })
hl.bind(mainMod .. " + SHIFT + minus",       hl.dsp.window.move({ workspace = 7  }), { locked = true })
hl.bind(mainMod .. " + SHIFT + underscore",  hl.dsp.window.move({ workspace = 8  }), { locked = true })
hl.bind(mainMod .. " + SHIFT + ccedilla",    hl.dsp.window.move({ workspace = 9  }), { locked = true })
hl.bind(mainMod .. " + SHIFT + agrave",      hl.dsp.window.move({ workspace = 10 }), { locked = true })

-- Special workspace (scratchpad)
hl.bind(mainMod .. " + S",         hl.dsp.workspace.toggle_special("magic"))
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))

-- Scroll through existing workspaces with mainMod + scroll
hl.bind(mainMod .. " + mouse_down", hl.dsp.workspace.focus("e+1"))
hl.bind(mainMod .. " + mouse_up",   hl.dsp.workspace.focus("e-1"))

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.move_grab(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize_grab(), { mouse = true })

-- Laptop multimedia keys for volume and LCD brightness
hl.bind("XF86AudioRaiseVolume",  hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 2%+"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume",  hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 2%-"),       { locked = true, repeating = true })
hl.bind("XF86AudioMute",         hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),      { locked = true, repeating = true })
hl.bind("XF86AudioMicMute",      hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),    { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp",   hl.dsp.exec_cmd("brightnessctl set 5%+"),                           { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl set 5%-"),                           { locked = true, repeating = true })

-- Requires playerctl
hl.bind("XF86AudioNext",  hl.dsp.exec_cmd("playerctl next"),       { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay",  hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev",  hl.dsp.exec_cmd("playerctl previous"),   { locked = true })

-- Screenshots (requires hyprshot & gradia)
hl.bind("Print",         hl.dsp.exec_cmd("hyprshot -m region -o ~/Images/Screenshots"),                { locked = true })
hl.bind("SHIFT + Print", hl.dsp.exec_cmd("hyprshot -m region -o ~/Images/Screenshots | gradia"),      { locked = true })
