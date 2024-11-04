local M = {}

-- Color palette --
M.colors = {

	-- Dark background colors --
	bg_dark = "#0f111a",
	bg = "#12141e",
	bg_highlight = "#1a1d28",
	bg_visual = "#2a2e3d",

	-- UI elements
	fg = "#c0caf5",
	fg_dark = "#a9b1d6",
	fg_gutter = "#3b4261",
	border = "#1d2030",

	-- Syntax colors
	comment = "#565f89",
	line_nr = "#3b4261",
	selection = "#2e324a",

	-- Base colors
	blue = "#7aa2f7",
	cyan = "#7dcfff",
	green = "#9ece6a",
	magenta = "#bb9af7",
	purple = "#9d7cd8",
	red = "#f7768e",
	orange = "#ff9e64",
	yellow = "#e0af68",

	-- Diagnostics
	error = "#db4b4b",
	warning = "#e0af68",
	info = "#0db9d7",
	hint = "#1abc9c",

	-- Git colors
	git_add = "#449dab",
	git_change = "#6183bb",
	git_delete = "#914c54",

	-- Special colors
	term_black = "#414868",
	term_white = "#c0caf5",
}

-- Terminal colors --
M.terminal = {
	black = M.colors.term_black,
	red = M.colors.red,
	green = M.colors.green,
	yellow = M.colors.yellow,
	blue = M.colors.blue,
	magenta = M.colors.magenta,
	cyan = M.colors.cyan,
	white = M.colors.term_white,
}

return M
