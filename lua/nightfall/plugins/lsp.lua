local M = {}
local utils = require("nightfall.utils")
local colors = require("nightfall.colors")

function M.setup()
    utils.highlight("DiagnosticError", { fg = colors.red })
    utils.highlight("DiagnosticWarn", { fg = colors.yellow })
    utils.highlight("DiagnosticInfo", { fg = colors.blue })
    utils.highlight("DiagnosticHint", { fg = colors.cyan })
    utils.highlight("LspReferenceText", { bg = colors.bg_selection })
    utils.highlight("LspReferenceRead", { bg = colors.bg_selection })
    utils.highlight("LspReferenceWrite", { bg = colors.bg_selection })
end

return M
