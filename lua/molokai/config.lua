local config = {}

-- shim vim for kitty and other generators
vim = vim or { g = {}, o = {} }

local function opt(key, default)
    key = "molokai_" .. key
    if vim.g[key] == nil then
        return default
    end
    if vim.g[key] == 0 then
        return false
    end
    return vim.g[key]
end

config = {
    terminalColors = opt("terminal_colors", true),
    sidebars = opt("sidebars", {}),
    colors = opt("colors", {}),
    dev = opt("dev", false),
    lualineBold = opt("lualine_bold", false),
}

return config
