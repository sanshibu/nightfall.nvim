local M = {}

-- Default configuration --
local defaults = {
  transparent = false
  styles = {
    comments = { italic = true },
    keywords = { italic = false },
    functions = { bold = false },
    variables = {}
  },
}

-- Store the configuration --
M.options = {}

-- Setup function to handle user config --
function M.setup(opts)
  M.options = vim.tbl_deep_extend("force", {}, defaults, opts or {})
end

-- Main colorscheme function --
function M.colorscheme()

  -- Clear existing highlights --
  vim.cmd("hi clear")

  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end

  -- Set vim options --
  vim.o.termguicolors = true
  vim.g.colors_name = "nightfall"

  -- Load the theme --
  require("nightfall.theme").setup()
end

return M
