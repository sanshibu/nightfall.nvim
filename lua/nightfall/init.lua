-- init.lua --
local theme = require("nightfall.theme")

local M = {}

function M.setup(opts)
	opts = opts or {}

	-- Reset colors --
	if vim.g.colors_name then
		vim.cmd("hi clear")
	end

	vim.g.colors_name = "nightfall"
	vim.o.termguicolors = true

	-- Enhanced configuration
	local config = {
		-- Existing options
		transparent = opts.transparent or false,
		italic_comments = opts.italic_comments or true,
		italic_keywords = opts.italic_keywords or true,

		-- New options
		contrast = opts.contrast or "normal", -- "soft", "normal", "hard"
		styles = {
			functions = opts.styles and opts.styles.functions or {},
			keywords = opts.styles and opts.styles.keywords or {},
			strings = opts.styles and opts.styles.strings or {},
			variables = opts.styles and opts.styles.variables or {},
		},
		inverse = {
			match_paren = opts.inverse and opts.inverse.match_paren or false,
			visual = opts.inverse and opts.inverse.visual or false,
			search = opts.inverse and opts.inverse.search or false,
		},
		darken = {
			sidebars = opts.darken and opts.darken.sidebars or false,
			floats = opts.darken and opts.darken.floats or false,
		},
		custom_highlights = opts.custom_highlights or {},
		day_night = {
			enable = opts.day_night and opts.day_night.enable or false,
			day_brightness = opts.day_night and opts.day_night.day_brightness or 0.3,
			night_brightness = opts.day_night and opts.day_night.night_brightness or -0.1,
			auto_switch = opts.day_night and opts.day_night.auto_switch or false,
		},
	}

	-- Load the configuration --
	theme.load(config)
end

function M.colorscheme()
	M.setup()
end

return M
