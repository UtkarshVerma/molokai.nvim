local M = {}

---@param theme Theme
---@return Highlights
function M.setup(theme)
    local c = theme.colors

    return {
        IlluminatedWordText = { bg = c.bg_gray3 },
        IlluminatedWordRead = { bg = c.bg_gray3 },
        IlluminatedWordWrite = { bg = c.bg_gray3 }
    }
end

return M
