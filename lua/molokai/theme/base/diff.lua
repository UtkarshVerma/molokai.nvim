local M = {}

---@param theme Theme
---@return Highlights
function M.setup(theme)
  local c = theme.colors
  return {
    -- diffAdded = { fg = c.git.add },
    -- diffRemoved = { fg = c.git.delete },
    -- diffChanged = { fg = c.git.change },
    -- diffOldFile = { fg = c.yellow },
    -- diffNewFile = { fg = c.orange },
    -- diffFile = { fg = c.blue },
    -- diffLine = { fg = c.comment },
    -- diffIndexLine = { fg = c.purple },
  }
end

return M
