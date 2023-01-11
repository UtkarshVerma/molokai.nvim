local colors = require("molokai.colors").setup({ transform = true })
local util = require("molokai.util")
local config = require("molokai.config").options

local molokai = {}

molokai.normal = {
  a = { bg = colors.blue, fg = colors.bg },
  b = { bg = colors.bg_light, fg = colors.blue },
  c = { bg = colors.bg_statusline, fg = colors.fg_sidebar },
}

molokai.insert = {
  a = { bg = colors.green, fg = colors.bg },
  b = { bg = colors.bg_light, fg = colors.green },
}

molokai.command = {
  a = { bg = colors.yellow, fg = colors.bg },
  b = { bg = colors.bg_light, fg = colors.yellow },
}

molokai.visual = {
  a = { bg = colors.orange, fg = colors.bg },
  b = { bg = colors.bg_light, fg = colors.orange },
}

molokai.replace = {
  a = { bg = colors.magenta, fg = colors.bg },
  b = { bg = colors.bg_light, fg = colors.magenta },
}

molokai.terminal = {
  a = { bg = colors.green, fg = colors.bg },
  b = { bg = colors.bg_light, fg = colors.green },
}

molokai.inactive = {
  a = { bg = colors.bg_statusline, fg = colors.blue },
  b = { bg = colors.bg_statusline, fg = colors.bg_light, gui = "bold" },
  c = { bg = colors.bg_statusline, fg = colors.bg_light },
}

if config.lualine_bold then
  for _, mode in pairs(molokai) do
    mode.a.gui = "bold"
  end
end

return molokai