-------------------
---- AUTOSTART ----
-------------------

-- Autostart necessary processes (like notifications daemons, status bars, etc.)
-- Or execute your favorite apps at launch like this.
-- hl.on("hyprland.start", ...) ensures commands run only once at startup,
-- not on every config reload.

hl.on("hyprland.start", function()
    hl.exec_cmd("waypaper --restore")
    hl.exec_cmd("waybar")
    hl.exec_cmd("hypridle")
    hl.exec_cmd("vicinae server")
    hl.exec_cmd("swaync")
    hl.exec_cmd("swayosd-server")
    hl.exec_cmd("vesktop -m")
    hl.exec_cmd("arch-update --tray")
end)
