local M = {}
local utils = require("nightfall.utils")
local colors = require("nightfall.colors")

function M.setup()
    utils.highlight("TelescopeBorder", { fg = colors.border })
    utils.highlight("TelescopePromptBorder", { fg = colors.border })
    utils.highlight("TelescopeResultsBorder", { fg = colors.border })
    utils.highlight("TelescopePreviewBorder", { fg = colors.border })
    utils.highlight("TelescopeSelection", { bg = colors.bg_selection })
    utils.highlight("TelescopeMatching", { fg = colors.blue })
end

return M
