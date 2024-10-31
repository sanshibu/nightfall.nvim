local M = {}
local utils = require("nightfall.utils")
local colors = require("nightfall.colors")

function M.setup()
    utils.highlight("@comment", { fg = colors.fg_gutter, style = "italic" })
    utils.highlight("@error", { fg = colors.red })
    utils.highlight("@function", { fg = colors.blue })
    utils.highlight("@function.builtin", { fg = colors.cyan })
    utils.highlight("@keyword", { fg = colors.magenta })
    utils.highlight("@keyword.function", { fg = colors.magenta })
    utils.highlight("@keyword.operator", { fg = colors.magenta })
    utils.highlight("@method", { fg = colors.blue })
    utils.highlight("@parameter", { fg = colors.orange })
    utils.highlight("@string", { fg = colors.green })
    utils.highlight("@type", { fg = colors.blue })
    utils.highlight("@variable", { fg = colors.fg })
    utils.highlight("@tag", { fg = colors.magenta })
    utils.highlight("@tag.attribute", { fg = colors.blue })
end

return M
