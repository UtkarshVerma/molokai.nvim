local c = require("molokai.colors").setup()

local a_bg = c.bg_gray5
local b_bg = c.bg_gray3
local c_bg = c.bg_gray1

local molokai = {
    normal = {
        a = { fg = c.cyan, bg = a_bg },
        b = { fg = c.purple, bg = b_bg },
        c = { fg = c.gray, bg = c_bg },
    },
    insert = {
        a = { fg = c.green, bg = a_bg },
    },
    command = {
        a = { fg = c.orange, bg = a_bg },
    },
    visual = {
        a = { fg = c.purple, bg = a_bg },
    },
    replace = {
        a = { fg = c.blue, bg = a_bg },
    },
    inactive = {
        c = { fg = c.gray, bg = c_bg },
    },
}

if vim.g.molokai_lualine_bold then
    for _, mode in pairs(molokai) do
        mode.a.gui = "bold"
    end
end

return molokai
