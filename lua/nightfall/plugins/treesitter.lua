-- plugins/treesitter.lua
local c = require("nightfall.colors").colors

local M = {}

function M.groups(config)
	return {
		["@annotation"] = { fg = c.magenta },
		["@attribute"] = { fg = c.magenta },
		["@boolean"] = { fg = c.orange },
		["@character"] = { fg = c.green },
		["@comment"] = { fg = c.comment, italic = config.italic_comments },
		["@conditional"] = { fg = c.purple, italic = config.italic_keywords },
		["@constant"] = { fg = c.orange },
		["@constant.builtin"] = { fg = c.orange },
		["@constant.macro"] = { fg = c.orange },
		["@constructor"] = { fg = c.blue },
		["@error"] = { fg = c.error },
		["@exception"] = { fg = c.purple },
		["@field"] = { fg = c.cyan },
		["@float"] = { fg = c.orange },
		["@function"] = { fg = c.blue },
		["@function.builtin"] = { fg = c.cyan },
		["@function.macro"] = { fg = c.blue },
		["@include"] = { fg = c.purple },
		["@keyword"] = { fg = c.purple, italic = config.italic_keywords },
		["@keyword.function"] = { fg = c.purple, italic = config.italic_keywords },
		["@keyword.operator"] = { fg = c.purple },
		["@label"] = { fg = c.magenta },
		["@method"] = { fg = c.blue },
		["@namespace"] = { fg = c.yellow },
		["@number"] = { fg = c.orange },
		["@operator"] = { fg = c.fg },
		["@parameter"] = { fg = c.red },
		["@parameter.reference"] = { fg = c.red },
		["@property"] = { fg = c.cyan },
		["@punctuation.bracket"] = { fg = c.fg_dark },
		["@punctuation.delimiter"] = { fg = c.fg_dark },
		["@punctuation.special"] = { fg = c.cyan },
		["@repeat"] = { fg = c.purple, italic = config.italic_keywords },
		["@string"] = { fg = c.green },
		["@string.escape"] = { fg = c.cyan },
		["@string.regex"] = { fg = c.cyan },
		["@string.special"] = { fg = c.cyan },
		["@symbol"] = { fg = c.cyan },
		["@tag"] = { fg = c.red },
		["@tag.attribute"] = { fg = c.yellow },
		["@tag.delimiter"] = { fg = c.fg_dark },
		["@text"] = { fg = c.fg },
		["@text.strong"] = { bold = true },
		["@text.emphasis"] = { italic = true },
		["@text.strike"] = { strikethrough = true },
		["@text.literal"] = { fg = c.green },
		["@text.reference"] = { fg = c.blue },
		["@text.title"] = { fg = c.blue, bold = true },
		["@text.uri"] = { fg = c.cyan, underline = true },
		["@type"] = { fg = c.yellow },
		["@type.builtin"] = { fg = c.orange },
		["@variable"] = { fg = c.fg },
		["@variable.builtin"] = { fg = c.red },
	}
end

return M
