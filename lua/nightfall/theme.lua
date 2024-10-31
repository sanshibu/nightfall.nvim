local M = {}
local utils = require("nightfall.utils")
local colors = require("nightfall.colors")

function M.setup_editor()
	utils.highlight("Normal", { fg = colors.fg, bg = colors.bg })
	utils.highlight("NormalFloat", { fg = colors.fg, bg = colors.bg })
	utils.highlight("ColorColumn", { bg = colors.bg_sidebar })
	utils.highlight("Cursor", { fg = colors.bg, bg = colors.fg })
	utils.highlight("CursorLine", { bg = colors.bg_sidebar })
	utils.highlight("CursorColumn", { bg = colors.bg_sidebar })
	utils.highlight("Directory", { fg = colors.blue })
	utils.highlight("DiffAdd", { fg = colors.green })
	utils.highlight("DiffChange", { fg = colors.yellow })
	utils.highlight("DiffDelete", { fg = colors.red })
	utils.highlight("DiffText", { fg = colors.blue })
	utils.highlight("EndOfBuffer", { fg = colors.bg })
	utils.highlight("ErrorMsg", { fg = colors.red })
	utils.highlight("VertSplit", { fg = colors.border })
	utils.highlight("Folded", { fg = colors.blue, bg = colors.bg_sidebar })
	utils.highlight("FoldColumn", { fg = colors.fg_gutter })
	utils.highlight("SignColumn", { fg = colors.fg_gutter })
	utils.highlight("IncSearch", { fg = colors.bg, bg = colors.orange })
	utils.highlight("LineNr", { fg = colors.fg_gutter })
	utils.highlight("CursorLineNr", { fg = colors.fg })
	utils.highlight("MatchParen", { fg = colors.orange, style = "bold" })
	utils.highlight("NonText", { fg = colors.fg_gutter })
	utils.highlight("Pmenu", { fg = colors.fg, bg = colors.bg_sidebar })
	utils.highlight("PmenuSel", { fg = colors.bg, bg = colors.blue })
	utils.highlight("PmenuSbar", { bg = colors.bg_sidebar })
	utils.highlight("PmenuThumb", { bg = colors.fg_gutter })
	utils.highlight("Question", { fg = colors.green })
	utils.highlight("Search", { fg = colors.bg, bg = colors.yellow })
	utils.highlight("SpecialKey", { fg = colors.fg_gutter })
	utils.highlight("SpellBad", { sp = colors.red, style = "undercurl" })
	utils.highlight("SpellCap", { sp = colors.yellow, style = "undercurl" })
	utils.highlight("SpellLocal", { sp = colors.blue, style = "undercurl" })
	utils.highlight("SpellRare", { sp = colors.magenta, style = "undercurl" })
	utils.highlight("StatusLine", { fg = colors.fg, bg = colors.bg_statusline })
	utils.highlight("StatusLineNC", { fg = colors.fg_gutter, bg = colors.bg_statusline })
	utils.highlight("TabLine", { fg = colors.fg, bg = colors.bg_tabline })
	utils.highlight("TabLineFill", { bg = colors.bg_tabline })
	utils.highlight("TabLineSel", { fg = colors.fg, bg = colors.bg_tabline_active })
	utils.highlight("Title", { fg = colors.green, style = "bold" })
	utils.highlight("Visual", { bg = colors.bg_selection })
	utils.highlight("VisualNOS", { bg = colors.bg_selection })
	utils.highlight("WarningMsg", { fg = colors.yellow })
	utils.highlight("Whitespace", { fg = colors.fg_gutter })
	utils.highlight("WildMenu", { fg = colors.bg, bg = colors.blue })
end

function M.setup_syntax()
	utils.highlight("Comment", { fg = colors.fg_gutter, style = "italic" })
	utils.highlight("Constant", { fg = colors.orange })
	utils.highlight("String", { fg = colors.green })
	utils.highlight("Character", { fg = colors.green })
	utils.highlight("Number", { fg = colors.orange })
	utils.highlight("Boolean", { fg = colors.orange })
	utils.highlight("Float", { fg = colors.orange })
	utils.highlight("Identifier", { fg = colors.magenta })
	utils.highlight("Function", { fg = colors.blue })
	utils.highlight("Statement", { fg = colors.magenta })
	utils.highlight("Conditional", { fg = colors.magenta })
	utils.highlight("Repeat", { fg = colors.magenta })
	utils.highlight("Label", { fg = colors.magenta })
	utils.highlight("Operator", { fg = colors.blue })
	utils.highlight("Keyword", { fg = colors.magenta })
	utils.highlight("Exception", { fg = colors.magenta })
	utils.highlight("PreProc", { fg = colors.cyan })
	utils.highlight("Include", { fg = colors.magenta })
	utils.highlight("Define", { fg = colors.magenta })
	utils.highlight("Macro", { fg = colors.magenta })
	utils.highlight("PreCondit", { fg = colors.magenta })
	utils.highlight("Type", { fg = colors.blue })
	utils.highlight("StorageClass", { fg = colors.magenta })
	utils.highlight("Structure", { fg = colors.magenta })
	utils.highlight("Typedef", { fg = colors.magenta })
	utils.highlight("Special", { fg = colors.blue })
	utils.highlight("SpecialChar", { fg = colors.orange })
	utils.highlight("Tag", { fg = colors.blue })
	utils.highlight("Delimiter", { fg = colors.fg })
	utils.highlight("SpecialComment", { fg = colors.fg_gutter })
	utils.highlight("Debug", { fg = colors.orange })
	utils.highlight("Underlined", { style = "underline" })
	utils.highlight("Ignore", { fg = colors.fg_gutter })
	utils.highlight("Error", { fg = colors.red })
	utils.highlight("Todo", { fg = colors.blue })
end

return M
