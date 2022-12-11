local util = require("molokai.util")

local M = {}

---@param config? Config
---@return ColorScheme
function M.setup(config)
  config = config or require("molokai.config")

  ---@class ColorScheme
  local colors = {
    none = "NONE",
    bg = "#1b1d1e",
    red = "#f92672",
    green = "#a6e22e",
    yellow = "#e6db74",
    orange = "#fd971f",
    blue = "#819aff",
    purple = "#ae81ff",
    cyan = "#66d9ef",
    fg = "#f8f8f2",
    gray = "#666666",

    comment = "#7e8e91",
  }
  util.bg = colors.bg
  util.fg = colors.fg

  colors.diff = {
    add = colors.green,
    delete = colors.red,
    change = colors.yellow,
    text = colors.fg,
  }

  colors.border_highlight = colors.cyan
  colors.border = colors.fg

  -- Shades of gray from darkest to lightest
  colors.bg_gray1 = util.lighten(colors.bg, 0.95)
  colors.bg_gray2 = util.lighten(colors.bg_gray1, 0.95)
  colors.bg_gray3 = util.lighten(colors.bg_gray2, 0.95)
  colors.bg_gray4 = util.lighten(colors.bg_gray3, 0.95)
  colors.bg_gray5 = util.lighten(colors.bg_gray4, 0.95)

  -- Sidebar and Floats are configurable
  colors.bg_sidebar = (config.transparentSidebar and colors.none) or config.darkSidebar and colors.bg_gray2 or colors.bg
  colors.bg_float = (config.transparentFloat and colors.none) or config.darkFloat and colors.bg_gray2 or colors.bg

  colors.bg_cursorline = colors.bg_gray1
  colors.bg_popup = colors.bg_gray2
  colors.bg_highlight = colors.bg_gray3
  colors.bg_visual = colors.bg_gray4
  colors.fg_alt = util.darken(colors.fg, 0.8)

  colors.info = colors.cyan
  colors.hint = colors.purple
  colors.error = "#f44747"
  colors.warning = colors.orange

  util.color_overrides(colors, config)

  return colors
end

return M
