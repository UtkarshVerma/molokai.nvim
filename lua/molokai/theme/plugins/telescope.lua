local c = require("molokai.colors")

return {
    TelescopeNormal            = { fg = c.fg, bg = c.none },
    TelescopeBorder            = { fg = c.fg, bg = c.none },
    TelescopePromptBorder      = { fg = c.fg, bg = c.none },
    TelescopePromptNormal      = { fg = c.fg, bg = c.none },
    TelescopePromptPrefix      = { fg = c.red, bg = c.bg },
    TelescopePreviewTitle      = { fg = c.bg, bg = c.green },
    TelescopePromptTitle       = { fg = c.black, bg = c.red },
    TelescopeResultsTitle      = { fg = c.bg, bg = c.bg },
    TelescopeSelection         = { fg = c.fg, bg = c.bg_highlight },
    TelescopeResultsDiffAdd    = { fg = c.green },
    TelescopeResultsDiffChange = { fg = c.yellow },
    TelescopeResultsDiffDelete = { fg = c.red }
}
