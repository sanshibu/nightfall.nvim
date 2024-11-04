-- utils.lua
local M = {}

-- Convert hex color to rgb
function M.hex2rgb(hex)
	hex = hex:gsub("#", "")
	return tonumber("0x" .. hex:sub(1, 2)), tonumber("0x" .. hex:sub(3, 4)), tonumber("0x" .. hex:sub(5, 6))
end

-- Format value for highlight command
local function format_value(val)
	if type(val) == "string" and val:match("^#") then
		-- Wrap hex colors in quotes
		return string.format("'%s'", val)
	elseif type(val) == "string" then
		-- Check if the value contains spaces or special characters
		if val:match("[%s%p]") then
			return string.format("'%s'", val)
		end
	end
	return val
end

-- Set highlight group
function M.highlight(group, style)
	local style_with_attrs = vim.tbl_extend("force", {}, style)

	-- Convert style attributes
	local attrs = {}
	if style_with_attrs.bold then
		attrs[#attrs + 1] = "bold"
	end
	if style_with_attrs.italic then
		attrs[#attrs + 1] = "italic"
	end
	if style_with_attrs.underline then
		attrs[#attrs + 1] = "underline"
	end
	if style_with_attrs.undercurl then
		attrs[#attrs + 1] = "undercurl"
	end
	if style_with_attrs.strikethrough then
		attrs[#attrs + 1] = "strikethrough"
	end

	-- Remove boolean attributes
	style_with_attrs.bold = nil
	style_with_attrs.italic = nil
	style_with_attrs.underline = nil
	style_with_attrs.undercurl = nil
	style_with_attrs.strikethrough = nil

	-- Set highlight
	style_with_attrs.sp = style_with_attrs.sp and style_with_attrs.sp or nil

	-- Only add special if we have attributes
	if #attrs > 0 then
		style_with_attrs.special = table.concat(attrs, ",")
	end

	local hl_parts = {}
	for key, val in pairs(style_with_attrs) do
		if val and val ~= "NONE" then
			local formatted_val = format_value(val)
			table.insert(hl_parts, string.format("%s=%s", key, formatted_val))
		end
	end

	if #hl_parts > 0 then
		local hl_command = string.format("highlight %s %s", group, table.concat(hl_parts, " "))
		vim.cmd(hl_command)
	else
		vim.cmd("highlight clear " .. group)
	end
end

return M
