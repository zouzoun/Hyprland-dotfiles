-----------------------
---- WORKSPACE RULES ---
-----------------------

-- Ref https://wiki.hypr.land/Configuring/Workspace-Rules/
-- "Smart gaps" / "No gaps when only"
-- Uncomment all if you wish to use that.

-- hl.workspace_rule({ selector = "w[tv1]", gapsout = 0, gapsin = 0 })
-- hl.workspace_rule({ selector = "f[1]",   gapsout = 0, gapsin = 0 })
--
-- hl.window_rule({
--     name  = "no-gaps-wtv1",
--     match = { float = false, workspace = "w[tv1]" },
--     border_size = 0,
--     rounding    = 0,
-- })
--
-- hl.window_rule({
--     name  = "no-gaps-f1",
--     match = { float = false, workspace = "f[1]" },
--     border_size = 0,
--     rounding    = 0,
-- })

------------
---- MISC ---
------------

-- https://wiki.hypr.land/Configuring/Variables/#misc
hl.config({
    misc = {
        force_default_wallpaper = -1,    -- Set to 0 or 1 to disable the anime mascot wallpapers
        disable_hyprland_logo   = false, -- If true disables the random hyprland logo / anime girl background. :(
    },
})


-------------------
---- LAYER RULES --
-------------------

hl.layer_rule({
    name           = "vicinae-blur",
    match          = { namespace = "vicinae" },
    blur           = true,
    ignore_alpha   = 0,
})

-- Disable animation for vicinae only
-- hl.layer_rule({
--     name  = "vicinae-no-animation",
--     match = { namespace = "vicinae" },
--     no_anim = true,
-- })
