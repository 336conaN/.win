-------------------------------------
--                                 --
--  https://github.com/336conaN    --
--  https://codeberg.org/336conaN  --
--                                 --
-------------------------------------

local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.default_domain = "WSL:NixOS"
config.window_close_confirmation = "NeverPrompt"
config.enable_tab_bar = false
config.enable_scroll_bar = false
config.color_scheme = "catppuccin-mocha"
config.window_padding = { top = "0px", bottom = "7px", left = "7px", right = "7px" }
config.font_size= 12
config.font = wezterm.font ( "SFMono Nerd Font", { weight = "Bold" } )
config.max_fps = 120
config.animation_fps = 1
config.keys = {
  {
    key = "c",
    mods = "CTRL|SHIFT",
    action = wezterm.action.CopyTo("Clipboard"),
  },
  {
    key = "v",
    mods = "CTRL|SHIFT",
    action = wezterm.action.PasteFrom("Clipboard"),
  },
  {
    key = "x",
    mods = "CTRL|SHIFT",
    action = wezterm.action.QuickSelect,
  },
  {
    key = "z",
    mods = "CTRL|SHIFT",
    action = wezterm.action.ActivateCopyMode,
  },
}
config.disable_default_key_bindings = true
config.disable_default_mouse_bindings = true

return config

