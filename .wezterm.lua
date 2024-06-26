local wezterm = require 'wezterm'
local mux = wezterm.mux

local SOLID_LEFT_ARROW = wezterm.nerdfonts.pl_right_hard_divider
local SOLID_RIGHT_ARROW = wezterm.nerdfonts.pl_left_hard_divider

wezterm.on("gui-startup", function()
  local tab, pane, window = mux.spawn_window{}
  window:gui_window():maximize()
end)

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.default_domain = 'WSL:Ubuntu-22.04'
config.color_scheme = 'Kanagawa (Gogh)'
config.font = wezterm.font("BlexMono Nerd Font")
config.font_size = 10
config.line_height = 1.0
config.window_padding = {
  left = 3, right = 3, top = 3, bottom = 3,
}
config.window_background_opacity = 1.0
config.term = 'xterm-256color'
config.use_fancy_tab_bar = false
config.tab_bar_at_bottom=true
-- How many lines of scrollback you want to retain per tab
config.scrollback_lines = 3500
config.enable_scroll_bar = false
config.disable_default_key_bindings = true

-- keybind
config.keys = {
  -- C-A-h to split horizontally
  {key="h", mods="CTRL|ALT", action=wezterm.action{SplitHorizontal={domain="CurrentPaneDomain"}}},
  -- C-A-v to split vertically
  {key="v", mods="CTRL|ALT", action=wezterm.action{SplitVertical={domain="CurrentPaneDomain"}}},

  -- C-S-h to move focus to the pane on the left
  {key="h", mods="CTRL|SHIFT", action=wezterm.action{ActivatePaneDirection="Left"}},
  -- C-S-j to move focus to the pane below
  {key="j", mods="CTRL|SHIFT", action=wezterm.action{ActivatePaneDirection="Down"}},
  -- C-S-k to move focus to the pane above
  {key="k", mods="CTRL|SHIFT", action=wezterm.action{ActivatePaneDirection="Up"}},
  -- C-S-l to move focus to the pane on the right
  {key="l", mods="CTRL|SHIFT", action=wezterm.action{ActivatePaneDirection="Right"}},
  -- C-S-w to close the current pane
  {key="w", mods="CTRL|SHIFT", action=wezterm.action{CloseCurrentPane={confirm=true}}},

  -- C-S-A-h to resize by moving the left edge to the left
  {key="h", mods="CTRL|SHIFT|ALT", action=wezterm.action{AdjustPaneSize={"Left", 5}}},
  -- C-S-A-j to resize by moving the bottom edge down
  {key="j", mods="CTRL|SHIFT|ALT", action=wezterm.action{AdjustPaneSize={"Down", 5}}},
  -- C-S-A-k to resize by moving the bottom edge up
  {key="k", mods="CTRL|SHIFT|ALT", action=wezterm.action{AdjustPaneSize={"Up", 5}}},
  -- C-S-A-l to resize by moving the right edge to the right
  {key="l", mods="CTRL|SHIFT|ALT", action=wezterm.action{AdjustPaneSize={"Right", 5}}},

  -- C-S-( to switch to the previous tab
  {key="(", mods="CTRL|SHIFT", action=wezterm.action{ActivateTabRelative=-1}},
  -- C-S-) to switch to the next tab
  {key=")", mods="CTRL|SHIFT", action=wezterm.action{ActivateTabRelative=1}},

  -- C-S-(1-8) to switch to the tab at the corresponding position
  {key="1", mods="CTRL|SHIFT", action=wezterm.action{ActivateTab=0}},
  {key="2", mods="CTRL|SHIFT", action=wezterm.action{ActivateTab=1}},
  {key="3", mods="CTRL|SHIFT", action=wezterm.action{ActivateTab=2}},
  {key="4", mods="CTRL|SHIFT", action=wezterm.action{ActivateTab=3}},
  {key="5", mods="CTRL|SHIFT", action=wezterm.action{ActivateTab=4}},
  {key="6", mods="CTRL|SHIFT", action=wezterm.action{ActivateTab=5}},
  {key="7", mods="CTRL|SHIFT", action=wezterm.action{ActivateTab=6}},
  {key="8", mods="CTRL|SHIFT", action=wezterm.action{ActivateTab=7}},

  -- C-S-t to open a new tab
  {key="t", mods="CTRL|SHIFT", action=wezterm.action{SpawnTab="CurrentPaneDomain"}},
  -- C-S-q to close the current tab
  {key="q", mods="CTRL|SHIFT", action=wezterm.action{CloseCurrentTab={confirm=true}}},
}

-- tab bar
config.colors = {
  tab_bar = {
    background = "#1e1e1e",
    active_tab = {
      bg_color = "#1e1e1e",
      fg_color = "#d0d0d0",
      intensity = "Normal",
      underline = "None",
    },
    inactive_tab = {
      bg_color = "#1e1e1e",
      fg_color = "#808080",
      intensity = "Half",
      underline = "None",
    },
    inactive_tab_hover = {
      bg_color = "#1e1e1e",
      fg_color = "#d0d0d0",
      intensity = "Normal",
      underline = "None",
    },
  },
}

return config
