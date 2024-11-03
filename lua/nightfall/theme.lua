local c = require("nightfall.colors")
local utils = require("nightfall.utils")

local M = {}

function M.setup()
	local syntax = {
		-- Base highlights
		Normal = { fg = c.fg, bg = c.bg },
		NormalFloat = { fg = c.fg, bg = c.bg },
		Comment = { fg = c.comment, italic = true },
		Constant = { fg = c.orange },
		String = { fg = c.green },
		Character = { fg = c.green },
		Number = { fg = c.orange },
		Boolean = { fg = c.orange },
		Float = { fg = c.orange },
		Identifier = { fg = c.magenta },
		Function = { fg = c.blue },
		Statement = { fg = c.magenta },
		Keyword = { fg = c.magenta },
		Operator = { fg = c.blue },
		PreProc = { fg = c.cyan },
		Type = { fg = c.blue },
		Special = { fg = c.cyan },
		Tag = { fg = c.blue },
		Delimiter = { fg = c.fg },
		Error = { fg = c.error },
		Todo = { fg = c.yellow, bold = true },

		-- UI highlights
		StatusLine = { fg = c.fg_sidebar, bg = c.bg_statusline },
		StatusLineNC = { fg = c.fg_gutter, bg = c.bg_statusline },
		Cursor = { fg = c.bg, bg = c.fg },
		CursorLine = { bg = c.bg_selection },
		LineNr = { fg = c.fg_gutter },
		SignColumn = { bg = c.bg },
		VertSplit = { fg = c.border },
		Visual = { bg = c.bg_selection },
		MatchParen = { fg = c.orange, bold = true },
	}

	-- Set all highlights
	for group, opts in pairs(syntax) do
		utils.highlight(group, opts)
	end

	require("nightfall.plugins.bufferline")
	require("nightfall.plugins.cmp")
	require("nightfall.plugins.gitsigns")
	require("nightfall.plugins.lsp")
	require("nightfall.plugins.indent-blankline")
	require("tokyodark.plugins.nvim-tree")
	require("tokyodark.plugins.telescope")
	require("tokyodark.plugins.treesitter")
end
