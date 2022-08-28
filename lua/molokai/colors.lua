local c = {
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

local util = require("molokai.util")
util.bg = c.bg
util.fg = c.fg

c.bg_float = util.lighten(c.bg, 0.95)
c.bg_highlight = util.lighten(c.bg_float, 0.93)
c.bg_gray = util.lighten(c.bg_highlight, 0.9)

c.fg_alt = util.darken(c.fg, 0.8)

c.info = c.cyan
c.hint = c.purple
c.error = "#f44747"
c.warning = c.orange

c.diff = {
    add = c.green,
    delete = c.red,
    change = c.yellow,
    text = c.fg,
}

-- c.git = {
--   change = "#6183bb",
--   add = "#449dab",
--   delete = "#914c54",
--   conflict = "#bb7a61",
--   ignore = c.dark3
-- }

c.border_highlight = c.blue
c.border = c.fg

return c
