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

	-- Load the colorscheme --
	theme.load(opts)
end

function M.colorscheme()
	M.setup()
end

return M
