local M = {}

---@param theme Theme
---@return Highlights
function M.setup(theme)
  local c = theme.colors
  return {
    TelescopeNormal = { fg = c.fg_alt },
    TelescopeBorder = { fg = c.fg },
    TelescopePromptBorder = { fg = c.fg },
    TelescopePromptNormal = { fg = c.fg },
    TelescopePromptPrefix = { fg = c.red },
    TelescopePromptTitle = { fg = c.red },
    TelescopePromptCounter = { fg = c.purple },
    TelescopePreviewNormal = { fg = c.fg },
    TelescopePreviewTitle = { fg = c.green },
    TelescopeResultsTitle = { fg = c.cyan },
    TelescopeSelection = { fg = c.fg, bg = c.bg_highlight, style = "bold" },
    TelescopeSelectionCaret = { fg = c.cyan, bg = c.bg_highlight },
    TelescopeMatching = { fg = c.cyan },
    TelescopeResultsDiffAdd = { fg = c.diff.add },
    TelescopeResultsDiffChange = { fg = c.diff.change },
    TelescopeResultsDiffDelete = { fg = c.diff.delete },
  }
end

return M
