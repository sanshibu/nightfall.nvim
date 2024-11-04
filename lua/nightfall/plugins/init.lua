-- plugins/init.lua
local M = {}

function M.load(config)
	-- Load all plugin highlights
	local plugin_modules = {
		"nightfall.plugins.telescope",
		"nightfall.plugins.nvim-tree",
		"nightfall.plugins.gitsigns",
		"nightfall.plugins.lsp",
		"nightfall.plugins.lualine",
		"nightfall.plugins.indent-blankline",
		"nightfall.plugins.which-key",
		"nightfall.plugins.cmp",
		"nightfall.plugins.notify",
		"nightfall.plugins.hop",
		"nightfall.plugins.mini",
	}

	for _, module in ipairs(plugin_modules) do
		local ok, plugin = pcall(require, module)
		if ok then
			plugin.load(config)
		end
	end
end

return M
