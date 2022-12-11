local M = {}

---@param theme Theme
---@return Highlights
function M.setup(theme)
    local c = theme.colors
    return {
        TSNote                = { fg = c.bg, bg = c.info },
        ["@text.warning"]     = { fg = c.bg, bg = c.warning },
        ["@text.danger"]      = { fg = c.bg, bg = c.error },
        ["@namespace"]        = { fg = c.green, style = "underline" }, -- For identifiers referring to modules and namespaces.
        ["@parameter"]        = { fg = c.orange }, -- For parameters of a function.
        ["@field"]            = { fg = c.green }, -- Same as `TSField`.
        ["@property"]         = { fg = c.green },
        ["@method"]           = { fg = c.green },
        ["@variable.builtin"] = { fg = c.orange }, -- Variable names that are defined by the languages, like `this` or `self`.
        ["@constant.builtin"] = { fg = c.green },
        ["@type.qualifier"]   = { fg = c.red },
    }
end

return M
