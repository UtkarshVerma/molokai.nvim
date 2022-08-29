local M = {}

---@param theme Theme
---@return Highlights
function M.setup(theme)
  local c = theme.colors

  return {
    VimwikiBold = { fg = c.cyan, style = "bold" },
    VimwikiItalic = { fg = c.cyan, style = "italic" },
    VimwikiHeaderChar = { fg = c.green },
    VimwikiListTodo = { fg = c.orange },
    VimwikiLink = { fg = c.purple },
    VimwikiLinkChar = { fg = c.yellow },
  }
end

return M
