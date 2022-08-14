local util = require("molokai.util")

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

    comment = "#7e8e91",
}

colors.bg_highlight = util.lighten(colors.bg, 0.91)
util.bg = colors.bg
colors.error = "#f44747"
colors.warning = colors.orange

colors.diff = {
    add = colors.green,
    delete = colors.red,
    change = colors.yellow,
    text = colors.fg,
}

-- colors.git = {
--   change = "#6183bb",
--   add = "#449dab",
--   delete = "#914c54",
--   conflict = "#bb7a61",
--   ignore = colors.dark3
-- }

colors.black = util.darken(colors.bg, 0.8, "#000000")
colors.border_highlight = colors.blue
colors.border = colors.fg

-- -- Popups and statusline always get a dark background
-- colors.bg_popup = colors.bg_dark
-- colors.bg_statusline = colors.bg_dark

-- -- Sidebar and Floats are configurable
-- colors.bg_sidebar = (config.transparentSidebar and colors.none) or config.darkSidebar and colors.bg_dark or colors.bg
-- colors.bg_float = config.darkFloat and colors.bg_dark or colors.bg

-- colors.bg_visual = util.darken(colors.blue0, 0.7)
-- colors.bg_search = colors.blue0
-- colors.fg_sidebar = colors.fg_dark

return colors
