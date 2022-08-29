local M = {}

---@param theme Theme
function M.setup(theme)
  local util = require("molokai.util")
  local c = theme.colors
  return {
    DiagnosticWarning = { link = "DiagnosticWarn" },
    DiagnosticInformation = { link = "DiagnosticInfo" },
    -- LspFloatWinNormal = { bg = c.none },
    -- LspFloatWinBorder = { fg = c.border },
    -- LspSagaBorderTitle = { fg = c.cyan },
    -- LspSagaHoverBorder = { fg = c.blue },
    -- LspSagaRenameBorder = { fg = c.green },
    -- LspSagaDefPreviewBorder = { fg = c.green },
    -- LspSagaCodeActionBorder = { fg = c.blue },
    -- LspSagaFinderSelection = { fg = c.bg_visual },
    -- LspSagaCodeActionTitle = { fg = c.blue1 },
    -- LspSagaCodeActionContent = { fg = c.purple },
    -- LspSagaSignatureHelpBorder = { fg = c.red },
    -- ReferencesCount = { fg = c.purple },
    -- DefinitionCount = { fg = c.purple },
    -- DefinitionIcon = { fg = c.blue },
    -- ReferencesIcon = { fg = c.blue },
    -- TargetWord = { fg = c.cyan },
  }
end

return M
