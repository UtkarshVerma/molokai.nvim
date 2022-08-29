local M = {}

---@param theme Theme
---@return Highlights
function M.setup(theme)
  local c = theme.colors

  return {
    RainbowCol1 = { fg = c.orange },
    RainbowCol2 = { fg = c.purple },
    RainbowCol3 = { fg = c.cyan },
    RainbowCol4 = { fg = c.orange },
    RainbowCol5 = { fg = c.purple },
    RainbowCol6 = { fg = c.cyan },
    RainbowCol7 = { fg = c.purple },
  }
end

return M
