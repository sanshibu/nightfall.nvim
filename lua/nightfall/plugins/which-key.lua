local M = {}
local utils = require("nightfall.utils")
local colors = require("nightfall.colors")

function M.setup()
    utils.highlight("WhichKey", { fg = colors.blue })
    utils.highlight("WhichKeyGroup", { fg = colors.magenta })
    utils.highlight("WhichKeyDesc", { fg = colors.fg })
    utils.highlight("WhichKeySeperator", { fg = colors.fg_gutter })
    utils.highlight("WhichKeyFloat", { bg = colors.bg_sidebar })
end

return M
