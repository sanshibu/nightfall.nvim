local M = {}

function M.setup()
  vim.cmd("hi clear")

  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end

  vim.o.termguicolors true
  vim.g.colors_name = "nightfall"

  require("nightfall.theme").setup()
end

function M.colorscheme()
  M.setup()
end

return M
