local M = {}

---@param theme Theme
---@return Highlights
function M.setup(theme)
  local c = theme.colors
  return {
    -- WhichKey = { fg = c.cyan },
    -- WhichKeyGroup = { fg = c.blue },
    -- WhichKeyDesc = { fg = c.purple },
    -- WhichKeySeperator = { fg = c.comment },
    -- WhichKeySeparator = { fg = c.comment },
    -- WhichKeyFloat = { bg = c.bg_sidebar },
    -- WhichKeyValue = { fg = c.dark5 },
  }
end

return M
