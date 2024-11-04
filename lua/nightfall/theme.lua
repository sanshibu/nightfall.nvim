-- theme.lua
local c = require("nightfall.colors").colors
local util = require("nightfall.utils")

local M = {}

function M.load(opts)
	local config = {
		transparent = opts.transparent or false,
		italic_comments = opts.italic_comments or true,
		italic_keywords = opts.italic_keywords or true,
	}

	-- Editor
	local editor = {
		Normal = { fg = c.fg, bg = config.transparent and "NONE" or c.bg },
		NormalFloat = { fg = c.fg, bg = c.bg_dark },
		ColorColumn = { bg = c.bg_visual },
		Cursor = { fg = c.bg, bg = c.fg },
		CursorLine = { bg = c.bg_highlight },
		CursorLineNr = { fg = c.fg },
		LineNr = { fg = c.line_nr },
		SignColumn = { bg = config.transparent and "NONE" or c.bg },
		VertSplit = { fg = c.border },
		Visual = { bg = c.bg_visual },
		VisualNOS = { bg = c.bg_visual },
	}

	-- Syntax
	local syntax = {
		Comment = { fg = c.comment, italic = config.italic_comments },
		Constant = { fg = c.orange },
		String = { fg = c.green },
		Character = { fg = c.green },
		Number = { fg = c.orange },
		Boolean = { fg = c.orange },
		Float = { fg = c.orange },
		Identifier = { fg = c.magenta },
		Function = { fg = c.blue },
		Statement = { fg = c.magenta },
		Keyword = { fg = c.purple, italic = config.italic_keywords },
		Type = { fg = c.blue },
		Structure = { fg = c.purple },
		PreProc = { fg = c.cyan },
		Include = { fg = c.purple },
		Define = { fg = c.purple },
		Special = { fg = c.orange },
		Underlined = { underline = true },
		Error = { fg = c.error },
		Todo = { fg = c.bg, bg = c.yellow },
	}

	-- Treesitter
	local treesitter = {
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

	-- Apply highlights
	for group, style in pairs(editor) do
		util.highlight(group, style)
	end

	for group, style in pairs(syntax) do
		util.highlight(group, style)
	end

	for group, style in pairs(treesitter) do
		util.highlight(group, style)
	end
end

return M
