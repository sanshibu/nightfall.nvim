-- plugins/telescope.lua
local c = require("nightfall.colors").colors
local util = require("nightfall.utils")

local M = {}

function M.load(_)
	local telescope = {
		TelescopeNormal = { fg = c.fg, bg = c.bg_dark },
		TelescopeBorder = { fg = c.border, bg = c.bg_dark },
		TelescopePromptNormal = { fg = c.fg, bg = c.bg_dark },
		TelescopePromptBorder = { fg = c.border, bg = c.bg_dark },
		TelescopePromptPrefix = { fg = c.purple, bg = c.bg_dark },
		TelescopePromptTitle = { fg = c.bg_dark, bg = c.purple },
		TelescopePreviewTitle = { fg = c.bg_dark, bg = c.blue },
		TelescopeResultsTitle = { fg = c.bg_dark, bg = c.green },
		TelescopeSelection = { bg = c.bg_visual },
		TelescopePreviewLine = { bg = c.bg_highlight },
		TelescopeMatching = { fg = c.orange, bold = true },
	}

	for hl_group, style in pairs(telescope) do
		util.highlight(hl_group, style)
	end
end

return M
