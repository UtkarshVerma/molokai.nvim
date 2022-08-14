local M = {}
local merge = require("molokai.util").merge

-- Merge highlights to a single table
local paths = vim.api.nvim_get_runtime_file("lua/molokai/theme/plugins/*.lua", true)
for _, path in ipairs(paths) do
    local config = path:gsub(".*/lua/(.*)%.lua", "%1")
    if config ~= "molokai/theme/plugins/init" then
        local highlights = require(config)
        merge(M, highlights)
    end
end

return M
