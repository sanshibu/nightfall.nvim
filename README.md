# 🌙 Nightfall.nvim

A clean, dark and elegant Neovim colorscheme written in Lua. Inspired by TokyoNight, OneDark, and Nord themes, but with a darker background for comfortable long coding sesions.

![Nightfall Preview](./preview.png)

## ✨ Features

- 🎨 Carefully crafted color palette for optimal readability
- 🔌 Support for popular plugins
- 🌳 Full treesitter support
- 💡 Semantic token highlighting
- ⚡ Written in Lua for optimal performance
- 🛠 Easily customizable

## 📦 Installation

### Using [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
reurn {
  "sanshibu/nightfall.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
}
```

### Using [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use "sanshibu/nightfall.nvim"
```

## 🚀 Usage

Add this to your Neovim configuration:

```lua
vim.cmd[[colorscheme nightfall]]
```

## 🎨 Supported Plugins

- [TreeSitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [LSP Diagnostics](https://neovim.io/doc/user/lsp.html)
- [Telescope](https://github.com/nvim-telescope/telescope.nvim)
- [nvim-tree](https://github.com/nvim-tree/nvim-tree.lua)
- [Git Signs](https://github.com/lewis6991/gitsigns.nvim)
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [WhichKey](https://github.com/folke/which-key.nvim)
- [Indent Blankline](https://github.com/lukas-reineke/indent-blankline.nvim)
- [BufferLine](https://github.com/akinsho/bufferline.nvim)
- and many more ...

## 🎭 Color Palette

| Color   | Hex       | Usage                          |
|---------|-----------|--------------------------------|
| bg      | `#0f111a` | Background                     |
| fg      | `#1a1d28` | Foreground                     |
| blue    | `#7aa2f7` | Functions, Special Keywords    |
| cyan    | `#7dcfff` | Constants, Special Characters  |
| green   | `#9ece6a` | Strings, Git Add              |
| magenta | `#bb9af7` | Keywords, Identifiers         |
| red     | `#f7768e` | Errors, Git Delete            |
| yellow  | `#e0af68` | Warnings, Modified            |
| orange  | `#ff9e64` | Numbers, Boolean              |

## ⚙️ Configuration

TokyoDark comes with sane defaults, but you can customize it to your liking:

```lua
require("nightfall").setup({
  -- Custom options here
  transparent = false,
  italic_comments = true,
  italic_keywords = true
})
```

## 🤝 Contributing

Contributions are welcome! Feel free to submit issues and pull requests.

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📝 License

Distributed under the MIT License. See `LICENSE` for more information.

## 🙏 Acknowledgments

- Inspired by the Tokyo Night theme
- Thanks to all contributors and the Neovim community
