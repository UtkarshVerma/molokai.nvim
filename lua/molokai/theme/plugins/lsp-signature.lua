local M = {}

---@param theme Theme
---@return Highlights
function M.setup(theme)
  local c = theme.colors
  return {
    LspSignatureActiveParameter = { fg = c.purple, style = "underline" },
  }
end

return M
