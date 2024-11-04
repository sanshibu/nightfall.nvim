-- utils.lua
local M = {}

-- Convert hex color to rgb
function M.hex2rgb(hex)
	hex = hex:gsub("#", "")
	return tonumber("0x" .. hex:sub(1, 2)), tonumber("0x" .. hex:sub(3, 4)), tonumber("0x" .. hex:sub(5, 6))
end

-- Set highlight group
function M.highlight(group, style)
	local hl = {}

	-- Convert foreground color
	if style.fg then
		hl.fg = style.fg
	end

	-- Convert background color
	if style.bg then
		hl.bg = style.bg
	end

	-- Convert special color (for undercurl)
	if style.sp then
		hl.sp = style.sp
	end

	-- Convert style attributes
	hl.bold = style.bold
	hl.italic = style.italic
	hl.underline = style.underline
	hl.undercurl = style.undercurl
	hl.strikethrough = style.strikethrough

	-- Set the highlight
	vim.api.nvim_set_hl(0, group, hl)
end

return M
