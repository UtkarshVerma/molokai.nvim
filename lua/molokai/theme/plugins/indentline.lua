local c = require("molokai.colors")
local util = require("molokai.util")

return {
    IndentBlanklineChar = { fg = util.lighten(c.bg, 0.8) },
    IndentBlanklineContextChar = { fg = util.lighten(c.bg, 0.6) },
}
