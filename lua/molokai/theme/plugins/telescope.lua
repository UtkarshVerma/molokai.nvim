local c = require("molokai.colors")

return {
    TelescopeNormal            = { fg = c.fg },
    TelescopeBorder            = { fg = c.fg },
    TelescopePromptBorder      = { fg = c.fg },
    TelescopePromptNormal      = { fg = c.fg },
    TelescopePromptPrefix      = { fg = c.red },
    TelescopePromptCounter     = { fg = c.purple },
    TelescopePreviewTitle      = { fg = c.green },
    TelescopePromptTitle       = { fg = c.red },
    TelescopeResultsTitle      = { fg = c.cyan },
    TelescopeSelection         = { bg = c.bg_highlight },
    TelescopeResultsDiffAdd    = { fg = c.diff.add },
    TelescopeResultsDiffChange = { fg = c.diff.change },
    TelescopeResultsDiffDelete = { fg = c.diff.delete }
}
