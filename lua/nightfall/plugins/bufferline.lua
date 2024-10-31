local M = {}

local utils = require("nightfall.utils")
local colors = require("nightfall.colors")

function M.setup()
    utils.highlight("BufferLineFill", { bg = colors.bg_tabline })
    utils.highlight("BufferLineBackground", { fg = colors.fg_gutter, bg = colors.bg_tabline })
    utils.highlight("BufferLineBufferSelected", { fg = colors.fg, bg = colors.bg_tabline_active, style = "bold" })
    utils.highlight("BufferLineModified", { fg = colors.yellow })
    utils.highlight("BufferLineModifiedSelected", { fg = colors.yellow })
end

return M
