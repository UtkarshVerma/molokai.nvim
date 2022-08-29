local util = require("molokai.util")
local M = {}

---@param theme Theme
---@return Highlights
function M.setup(theme)
  ---@class Highlights
  local highlights = {}

  local paths = vim.api.nvim_get_runtime_file("lua/molokai/theme/base/*.lua", true)
  for _, path in ipairs(paths) do
    local config = path:gsub(".*/lua/(.*)%.lua", "%1")
    if config ~= "molokai/theme/base/init" then
      util.merge(highlights, require(config).setup(theme))
    end
  end

  return highlights
end

return M
