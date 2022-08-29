local M = {}

---@param theme Theme
---@return Highlights
function M.setup(theme)
  local c = theme.colors

  return {
    -- illuminatedWord = { bg = c.fg_gutter },
    -- illuminatedCurWord = { bg = c.fg_gutter },
  }
end

return M
