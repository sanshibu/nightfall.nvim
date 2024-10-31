local M = {}

local colors = require("nightfall.colors")
local theme = require("nightfall.theme")

local plugins = {
    treesitter = require("nightfall.plugins.treesitter"),
    lsp = require("nightfall.plugins.lsp"),
    telescope = require("nightfall.plugins.telescope"),
    nvim_tree = require("nightfall.plugins.nvim-tree"),
    gitsigns = require("nightfall.plugins.gitsigns"),
    cmp = require("nightfall.plugins.cmp"),
    indent_blankline = require("nightfall.plugins.indent-blankline"),
    bufferline = require("nightfall.plugins.bufferline"),
    which_key = require("nightfall.plugins.which-key")
}

function M.setup(opts)
    if opts then
        colors = vim.tbl_deep_extend("force", colors, opts)
    end
end

function M.load()

    -- Reset colors
    vim.cmd("hi clear")

    if vim.fn.exits("syntax_on") then
        vim.cmd("syntax reset")
    end

    vim.o.termguicolors = true
    vim.g.colors_name = "nightfall"

    -- Load base theme
    theme.setup_editor()
    theme.setup_syntax()

    -- Load plugin specific highlights
    for _, plugin in pairs(plugins) do
        plugin.setup()
    end
end
