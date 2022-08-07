local config = require("molokai.config")
local colors = require("molokai.colors").setup(config)
local util = require("molokai.util")

local molokai = {
  normal = {
    a = { bg = colors.cyan, fg = colors.bg },
    b = { bg = colors.red, fg = colors.bg },
    c = { bg = colors.bg_highlight, fg = colors.orange },
  },
  insert = {
    a = { bg = colors.green, fg = colors.bg },
  },
  command = {
    a = { bg = colors.yellow, fg = colors.bg },
  },
  visual = {
    a = { bg = colors.purple, fg = colors.black },
  },
  replace = {
    a = { bg = colors.blue, fg = colors.black },
  },
  inactive = {
    a = { bg = colors.bg, fg = colors.red },
    b = { bg = colors.red, fg = colors.fg, gui = "bold" },
    c = { bg = colors.bg_highlight, fg = colors.bg },
  },
}

if vim.g.molokai_lualine_bold then
  for _, mode in pairs(molokai) do
    mode.a.gui = "bold"
  end
end

return molokai
