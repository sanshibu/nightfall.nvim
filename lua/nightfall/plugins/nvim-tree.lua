local M = {}
local utils = require("nightfall.utils")
local colors = require("nightfall.colors")

function M.setup()
    utils.highlight("NvimTreeNormal", { fg = colors.fg, bg = colors.bg_sidebar })
    utils.highlight("NvimTreeFolderIcon", { fg = colors.blue })
    utils.highlight("NvimTreeFolderName", { fg = colors.fg })
    utils.highlight("NvimTreeOpenedFolderName", { fg = colors.blue })
    utils.highlight("NvimTreeGitDirty", { fg = colors.yellow })
    utils.highlight("NvimTreeGitNew", { fg = colors.green })
    utils.highlight("NvimTreeGitDeleted", { fg = colors.red })
end

return M
