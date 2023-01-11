local util = require("molokai.util")

local M = {}

---@class Palette
M.default = {
  none = "none",
  bg = "#1b1d1e",
  fg = "#f8f8f2",
  fg_gutter = "#808080",
  dark3 = "#464741", -- TODO
  comment = "#7e8e91",
  blue = "#819aff",
  cyan = "#66d9ef",
  magenta = "#f92672",
  purple = "#ae81ff",
  orange = "#fd971f",
  yellow = "#e6db74",
  green = "#a6e22e",
  teal = "#1abc9c", -- TODO
  red = "#f44747",

  error = "#f44747",
  warning = "#cd9731",
  info = "#6796e6",
  hint = "#b267e6",
}

---@return ColorScheme
function M.setup(opts)
  opts = opts or {}
  local config = require("molokai.config")

  local palette = {}

  -- Color Palette
  ---@class ColorScheme: Palette
  local colors = vim.tbl_deep_extend("force", M.default, palette)

  util.bg = colors.bg

  colors.gitSigns = {
    add = util.darken(colors.green, 0.6),
    change = util.darken(colors.blue, 0.8),
    delete = util.darken(colors.red, 0.8),
  }

  colors.git = {
    change = colors.purple,
    add = colors.green,
    delete = colors.magenta,
  }

  colors.diff = {
    add = util.darken(colors.green, 0.3),
    delete = util.darken(colors.red, 0.25),
    change = util.darken(colors.green, 0.1),
    text = util.darken(colors.green, 0.2),
  }

  colors.fg_dark = util.darken(colors.fg, 0.6)

  colors.bg_highlight = util.lighten(colors.bg, 0.91)
  colors.bg_visual = util.lighten(colors.bg, 0.85)
  colors.bg_light = util.lighten(colors.bg, 0.95)
  colors.bg_dark = util.darken(colors.bg, 0.9, "#000000")
  colors.border_highlight = util.darken(colors.cyan, 0.8)
  colors.border = colors.bg_highlight

  -- Popups and statusline always get a dark background
  colors.bg_popup = colors.bg_dark
  colors.bg_statusline = colors.bg_dark

  -- Sidebar and Floats are configurable
  colors.bg_sidebar = config.options.styles.sidebars == "transparent" and colors.none
    or config.options.styles.sidebars == "dark" and colors.bg_dark
    or colors.bg

  colors.bg_float = config.options.styles.floats == "transparent" and colors.none
    or config.options.styles.floats == "dark" and colors.bg_dark
    or colors.bg

  colors.bg_search = colors.bg_visual
  colors.fg_sidebar = colors.fg_dark
  -- colors.fg_float = config.options.styles.floats == "dark" and colors.fg_dark or colors.fg
  colors.fg_float = colors.fg

  config.options.on_colors(colors)
  return colors
end

return M