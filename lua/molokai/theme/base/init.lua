local util = require("molokai.util")
local M = {}

-- Merge highlights to a single table
local paths = vim.api.nvim_get_runtime_file("lua/molokai/theme/base/*.lua", true)
for _, path in ipairs(paths) do
    local config = path:gsub(".*/lua/(.*)%.lua", "%1")
    if config ~= "molokai/theme/base/init" then
        local highlights = require(config)
        util.merge(M, highlights)
    end
end

return M
