local theme = {}
theme.colors = require("molokai.colors")
theme.base = require("molokai.theme.base")

if not vim.diagnostic then
    local severity_map = {
        Error = "Error",
        Warn = "Warning",
        Info = "Information",
        Hint = "Hint",
    }
    local types = { "Default", "VirtualText", "Underline" }
    for _, type in ipairs(types) do
        for snew, sold in pairs(severity_map) do
            theme.base["LspDiagnostics" .. type .. sold] = {
                link = "Diagnostic" .. (type == "Default" and "" or type) .. snew,
            }
        end
    end
end

theme.plugins = require("molokai.theme.plugins")
theme.defer = {}

return theme

