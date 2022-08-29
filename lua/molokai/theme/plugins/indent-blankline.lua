local M = {}

---@param theme Theme
---@return Highlights
function M.setup(theme)
  local c = theme.colors

  return {
    IndentBlanklineChar = { fg = c.bg_gray3 },
    IndentBlanklineContextChar = { fg = c.bg_gray5 },
    IndentBlanklineSpaceChar = { fg = c.fg },
    IndentBlanklineSpaceCharBlankline = { fg = c.fg },
  }
end

return M
