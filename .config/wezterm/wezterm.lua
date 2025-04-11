-- Path: ~/.config/wezterm/wezterm.lua
-- github.com/riverify
-- This is a configuration file for wezterm, a GPU-accelerated terminal emulator for modern workflows.

local wezterm = require("wezterm")

config = wezterm.config_builder()

config = {
    automatically_reload_config = true,
    enable_tab_bar = true,
    hide_tab_bar_if_only_one_tab = true,    -- Hide the tab bar when there is only one tab
    window_close_confirmation = "NeverPrompt",
    window_decorations = "RESIZE", -- disable the title bar but enable the resizable border
    font = wezterm.font("JetBrains Mono", { weight = "Bold" }),
    font_size = 13,
    color_scheme = "Nord (Gogh)",
    default_cursor_style = 'BlinkingBlock',
    macos_window_background_blur = 25, -- Enable window background blur on macOS
    background = {
        {
            source = {
                Color = "#282c35", -- #301934 dark purple
            },
            width = "100%",
            height = "100%",
            opacity = 0.85,
        },
    },
    window_padding = {
        left = 3,
        right = 3,
        top = 0,
        bottom = 0,
    },
    initial_rows = 50,
    initial_cols = 100,
}

-- 重新绑定 Option + 左右箭头为按单词移动
config.keys = {
  -- Option + 左箭头：按单词左移
  {
    mods = "OPT",
    key = "LeftArrow",
    action = wezterm.action.SendKey({ mods = "ALT", key = "b" }),
  },
  -- Option + 右箭头：按单词右移
  {
    mods = "OPT",
    key = "RightArrow",
    action = wezterm.action.SendKey({ mods = "ALT", key = "f" }),
  },
  -- Command + 左箭头：移动到行首
  {
    mods = "CMD",
    key = "LeftArrow",
    action = wezterm.action.SendKey({ mods = "", key = "Home" }),
  },
  -- Command + 右箭头：移动到行尾
  {
    mods = "CMD",
    key = "RightArrow",
    action = wezterm.action.SendKey({ mods = "", key = "End" }),
  },
}

return config
