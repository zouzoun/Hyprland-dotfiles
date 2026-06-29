------------------------
---- KEYBINDINGS (US) ---
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

-- Move focus with mainMod + arrow keys
hl.bind(mainMod .. " + left",  hl.dsp.window.move_focus("l"))
hl.bind(mainMod .. " + right", hl.dsp.window.move_focus("r"))
hl.bind(mainMod .. " + up",    hl.dsp.window.move_focus("u"))
hl.bind(mainMod .. " + down",  hl.dsp.window.move_focus("d"))

-- Switch workspaces with mainMod + [0-9]
hl.bind(mainMod .. " + 1", hl.dsp.workspace.focus(1))
hl.bind(mainMod .. " + 2", hl.dsp.workspace.focus(2))
hl.bind(mainMod .. " + 3", hl.dsp.workspace.focus(3))
hl.bind(mainMod .. " + 4", hl.dsp.workspace.focus(4))
hl.bind(mainMod .. " + 5", hl.dsp.workspace.focus(5))
hl.bind(mainMod .. " + 6", hl.dsp.workspace.focus(6))
hl.bind(mainMod .. " + 7", hl.dsp.workspace.focus(7))
hl.bind(mainMod .. " + 8", hl.dsp.workspace.focus(8))
hl.bind(mainMod .. " + 9", hl.dsp.workspace.focus(9))
hl.bind(mainMod .. " + 0", hl.dsp.workspace.focus(10))

-- Move active window to a workspace with mainMod + SHIFT + [0-9]
hl.bind(mainMod .. " + SHIFT + 1", hl.dsp.window.move({ workspace = 1  }))
hl.bind(mainMod .. " + SHIFT + 2", hl.dsp.window.move({ workspace = 2  }))
hl.bind(mainMod .. " + SHIFT + 3", hl.dsp.window.move({ workspace = 3  }))
hl.bind(mainMod .. " + SHIFT + 4", hl.dsp.window.move({ workspace = 4  }))
hl.bind(mainMod .. " + SHIFT + 5", hl.dsp.window.move({ workspace = 5  }))
hl.bind(mainMod .. " + SHIFT + 6", hl.dsp.window.move({ workspace = 6  }))
hl.bind(mainMod .. " + SHIFT + 7", hl.dsp.window.move({ workspace = 7  }))
hl.bind(mainMod .. " + SHIFT + 8", hl.dsp.window.move({ workspace = 8  }))
hl.bind(mainMod .. " + SHIFT + 9", hl.dsp.window.move({ workspace = 9  }))
hl.bind(mainMod .. " + SHIFT + 0", hl.dsp.window.move({ workspace = 10 }))

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
hl.bind("Print",         hl.dsp.exec_cmd("hyprshot -m region -o ~/Images/Screenshots"),           { locked = true })
hl.bind("SHIFT + Print", hl.dsp.exec_cmd("hyprshot -m region -o ~/Images/Screenshots | gradia"), { locked = true })
