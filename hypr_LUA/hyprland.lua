--      __ __              __             __                 ____         ____ __
--     ╱ ╱╱ ╱_ _____  ____╱ ╱__ ____  ___╱ ╱  _______  ___  ╱ _(_)__ _   ╱ _(_) ╱__ ___
--    ╱ _  ╱ ╱╱ ╱ _ ╲╱ __╱ ╱ _ `╱ _ ╲╱ _  ╱  ╱ __╱ _ ╲╱ _ ╲╱ _╱ ╱ _ `╱  ╱ _╱ ╱ ╱ ─_│_─<
--   ╱_╱╱_╱╲_, ╱ .__╱_╱ ╱_╱╲_,_╱_╱╱_╱╲_,_╱   ╲__╱╲___╱_╱╱_╱_╱╱_╱╲_, ╱  ╱_╱╱_╱_╱╲__╱___╱
--        ╱___╱_╱                                              ╱___╱


-- SOURCING FILES
-- Each require() call is a separate Lua scope — errors in one file don't block the others.
require("monitors")
require("programs")
require("autostart")
require("environment")
require("permissions")
require("decoration")
require("animations")
require("rules")
-- Replace "input-fr" by "input-us" for qwerty keyboards
require("input-fr")
-- Replace "binds-fr" by "binds-us" for qwerty keyboards
require("binds-fr")
require("workspaces")
require("colors")
