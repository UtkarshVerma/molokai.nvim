local util = require("molokai.util")
local theme = require("molokai.theme")
local config = require("molokai.config")

local M = {}

function M._load()
  -- might not work?
  M.load({ use_background = true })
end

---@param opts Config|nil
function M.load(opts)
  if opts then
    require("molokai.config").extend(opts)
  end
  util.load(theme.setup())
end

M.setup = config.setup

-- keep for backward compatibility
M.colorscheme = M.load

return M
