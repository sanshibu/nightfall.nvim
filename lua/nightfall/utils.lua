-- Path: Updated utils.lua
local M = {}

-- Existing functions remain the same
function M.hex2rgb(hex)
	hex = hex:gsub("#", "")
	return tonumber("0x" .. hex:sub(1, 2)), tonumber("0x" .. hex:sub(3, 4)), tonumber("0x" .. hex:sub(5, 6))
end

function M.highlight(group, style)
	-- Existing highlight function remains the same
end

-- Add new utility functions
function M.adjust_color(hex, amount)
	local r, g, b = M.hex2rgb(hex)
	r = math.min(255, math.max(0, r + (r * amount)))
	g = math.min(255, math.max(0, g + (g * amount)))
	b = math.min(255, math.max(0, b + (b * amount)))
	return string.format("#%02x%02x%02x", r, g, b)
end

function M.generate_contrast_colors(colors, contrast)
	local adjusted = {}
	local amount = ({
		soft = -0.15,
		normal = 0,
		hard = 0.15,
	})[contrast] or 0

	for name, color in pairs(colors) do
		if type(color) == "string" and color:match("^#%x%x%x%x%x%x$") then
			adjusted[name] = M.adjust_color(color, amount)
		else
			adjusted[name] = color
		end
	end
	return adjusted
end

return M
