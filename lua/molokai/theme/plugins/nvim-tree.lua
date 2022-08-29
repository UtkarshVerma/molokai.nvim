local M = {}

---@param theme Theme
---@return Highlights
function M.setup(theme)
  local c = theme.colors
  return {
    -- NvimTreeNormal = { fg = c.fg_sidebar, bg = c.bg_sidebar },
    -- NvimTreeNormalNC = { fg = c.fg_sidebar, bg = c.bg_sidebar },
    -- NvimTreeRootFolder = { fg = c.blue, style = "bold" },
    -- NvimTreeGitDirty = { fg = c.git.change },
    -- NvimTreeGitNew = { fg = c.git.add },
    -- NvimTreeGitDeleted = { fg = c.git.delete },
    -- NvimTreeSpecialFile = { fg = c.purple, style = "underline" },
    -- NvimTreeIndentMarker = { fg = c.fg_gutter },
    -- NvimTreeImageFile = { fg = c.fg_sidebar },
    -- NvimTreeSymlink = { fg = c.blue },
    -- -- NvimTreeFolderName= { fg = c.fg_float },
  }
end

return M
