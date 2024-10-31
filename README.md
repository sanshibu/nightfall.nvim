# Nightfall.nvim

A dark and elegant neovim coloscheme inspired by the night sky.

## Features

- Dark theme optimized for long coding sessions
- Carefully selected color palette for optimal contrast
- Support for popular plugins
- Customizable through LUA API

## Installation

Using [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
    "sanshibu/nightfall.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        vim.cmd([[colorscheme nightfall]])
    end,
}
```

## Supported Plugins

- Treesitter
- LSP
- Telescope
- Nvim-tree
- Gitsigns
- nvim-cmp
- indent-blankline
- bufferline
- which-key

## Configuration

You can customize the colors by passing a table to the setup function:

```lua
require('nightfall').setup({
    -- your custom colors here
})
```

## License

MIT License
