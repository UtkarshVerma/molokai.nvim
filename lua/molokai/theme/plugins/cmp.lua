local M = {}

---@param theme Theme
---@return Highlights
function M.setup(theme)
  local c = theme.colors

  return {
    CmpDocumentation = { fg = c.fg, bg = c.bg_popup },
    CmpDocumentationBorder = { fg = c.border_highlight, bg = c.bg_popup },

    CmpItemAbbr = { fg = c.fg, bg = c.none },
    CmpItemAbbrDeprecated = { fg = c.fg_alt, bg = c.none, style = "strikethrough" },
    CmpItemAbbrMatch = { fg = c.purple, bg = c.none },
    CmpItemAbbrMatchFuzzy = { fg = c.purple, bg = c.none },
    CmpItemKindDefault = { fg = c.fg_alt, bg = c.none },
    CmpItemMenu = { fg = c.comment, bg = c.none },
    CmpItemKindKeyword = { fg = c.cyan, bg = c.none },
    CmpItemKindVariable = { fg = c.purple, bg = c.none },
    CmpItemKindConstant = { fg = c.purple, bg = c.none },
    CmpItemKindReference = { fg = c.purple, bg = c.none },
    CmpItemKindValue = { fg = c.purple, bg = c.none },
    CmpItemKindFunction = { fg = c.blue, bg = c.none },
    CmpItemKindMethod = { fg = c.blue, bg = c.none },
    CmpItemKindConstructor = { fg = c.blue, bg = c.none },
    CmpItemKindClass = { fg = c.orange, bg = c.none },
    CmpItemKindInterface = { fg = c.orange, bg = c.none },
    CmpItemKindStruct = { fg = c.orange, bg = c.none },
    CmpItemKindEvent = { fg = c.orange, bg = c.none },
    CmpItemKindEnum = { fg = c.orange, bg = c.none },
    CmpItemKindUnit = { fg = c.orange, bg = c.none },
    CmpItemKindModule = { fg = c.yellow, bg = c.none },
    CmpItemKindProperty = { fg = c.green, bg = c.none },
    CmpItemKindField = { fg = c.green, bg = c.none },
    CmpItemKindTypeParameter = { fg = c.green, bg = c.none },
    CmpItemKindEnumMember = { fg = c.green, bg = c.none },
    CmpItemKindOperator = { fg = c.green, bg = c.none },
    CmpItemKindSnippet = { fg = c.gray, bg = c.none },
  }
end

return M
