local M = {}
local utils = require("nightfall.utils")
local colors = require("nightfall.colors")

function M.setup()
    utils.highlight("IndentBlanklineChar", { fg = colors.fg_gutter })
    utils.highlight("IndentBlanklineContextChar", { fg = colors.blue })
end

return M
