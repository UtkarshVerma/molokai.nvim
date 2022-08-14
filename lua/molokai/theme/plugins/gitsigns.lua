local c = require("molokai.colors")
local util = require("molokai.util")

return {
    GitSignsAdd = { fg = util.darken(c.green, 0.6) }, -- diff mode: Added line |diff.txt|
    GitSignsChange = { fg = c.yellow }, -- diff mode: Changed line |diff.txt|
    GitSignsDelete = { fg = util.darken(c.red, 0.8) }, -- diff mode: Deleted line |diff.txt|
}
