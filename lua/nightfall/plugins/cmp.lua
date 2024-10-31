local M = {}
local utils = require("nightfall.utils")
local colors = require("nightfall.colors")

function M.setup()
    utils.highlight("CmpItemAbbr", { fg = colors.fg })
    utils.highlight("CmpItemAbbrDeprecated", { fg = colors.fg_gutter, style = "strikethrough" })
    utils.highlight("CmpItemAbbrMatch", { fg = colors.blue })
    utils.highlight("CmpItemKind", { fg = colors.magenta })
    utils.highlight("CmpItemMenu", { fg = colors.fg_dark })
end

return M
