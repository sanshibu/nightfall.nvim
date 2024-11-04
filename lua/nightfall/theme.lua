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
	local treesitter = require("nightfall.plugins.treesitter").groups(config)

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

	-- Load plugin highlights
	require("nightfall.plugins.init").load(config)
end

return M
