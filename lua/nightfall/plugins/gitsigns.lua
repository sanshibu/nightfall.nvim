local M = {}
local utils = require("nightfall.utils")
local colors = require("nightfall.colors")

function M.setup()
    utils.highlight("GitSignsAdd", { fg = colors.green })
    utils.highlight("GitSignsChange", { fg = colors.yellow })
    utils.highlight("GitSignsDelete", { fg = colors.red })
end

return M
