-- 3. Update theme.lua with new theme handling
-- Path: theme.lua
local c = require("nightfall.colors").colors
local util = require("nightfall.utils")

local M = {}

local function apply_day_night_theme(colors, config)
	if not config.day_night.enable then
		return colors
	end

	local time = os.date("*t")
	local is_day = time.hour >= 6 and time.hour < 18
	local brightness = is_day and config.day_night.day_brightness or config.day_night.night_brightness

	local adjusted_colors = {}
	for name, color in pairs(colors) do
		if type(color) == "string" and color:match("^#%x%x%x%x%x%x$") then
			adjusted_colors[name] = util.adjust_color(color, brightness)
		else
			adjusted_colors[name] = color
		end
	end

	return adjusted_colors
end

local function setup_sidebars(highlights, config)
	if config.darken.sidebars then
		local sidebar_bg = util.adjust_color(highlights.Normal.bg, -0.2)
		local groups = {
			"NvimTreeNormal",
			"NeogitNormal",
			"NeoTreeNormal",
			"TelescopeSidebarNormal",
		}

		for _, group in ipairs(groups) do
			highlights[group] = { bg = sidebar_bg }
		end
	end
end

function M.load(config)
	-- Apply contrast adjustment
	local colors = util.generate_contrast_colors(c, config.contrast)

	-- Apply day/night adjustments
	colors = apply_day_night_theme(colors, config)

	-- Define base highlights
	local editor = {
		Normal = { fg = colors.fg, bg = config.transparent and "NONE" or colors.bg },
		NormalFloat = {
			fg = colors.fg,
			bg = config.darken.floats and util.adjust_color(colors.bg_dark, -0.1) or colors.bg_dark,
		},
		-- ... rest of your editor highlights
	}

	local syntax = {
		Comment = { fg = colors.comment, italic = config.italic_comments },
		-- Apply custom styles
		Function = { fg = colors.blue, bold = config.styles.functions.bold },
		Keyword = {
			fg = colors.purple,
			italic = config.italic_keywords,
			bold = config.styles.keywords.bold,
		},
		String = {
			fg = colors.green,
			italic = config.styles.strings.italic,
		},
		Identifier = {
			fg = colors.magenta,
			bold = config.styles.variables.bold,
		},
		-- ... rest of your syntax highlights
	}

	-- Apply highlights
	for group, style in pairs(editor) do
		util.highlight(group, style)
	end

	for group, style in pairs(syntax) do
		util.highlight(group, style)
	end

	-- Setup sidebars
	setup_sidebars(editor, config)

	-- Apply custom highlights
	for group, style in pairs(config.custom_highlights) do
		util.highlight(group, style)
	end

	-- Load plugin highlights
	require("nightfall.plugins.init").load(config)
end

return M
