local M = {}

---@param theme Theme
---@return Highlights
function M.setup(theme)
  local util = require("molokai.util")
  local c = theme.colors

  return {
    -- LspTroubleText = { fg = c.fg_dark },
    -- LspTroubleCount = { fg = c.purple, bg = c.fg_gutter },
    -- LspTroubleNormal = { fg = c.fg_sidebar, bg = c.bg_sidebar },
  }
end

return M
