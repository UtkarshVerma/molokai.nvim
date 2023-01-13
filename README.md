# molokai.nvim

A dark Neovim theme written in Lua ported from the Visual Studio Code [Dark Molokai](https://github.com/nonylene/vscode-dark-molokai-theme) theme.

> This repo heavily borrows source code from the awesome [tokyonight](https://github.com/folke/tokyonight.nvim/) theme for Neovim.

## ✨ Features

- supports the latest Neovim 5.0 features like TreeSitter and LSP
- minimal inactive statusline
- vim terminal colors
- darker background for sidebar-like windows
- **lualine** theme

### Plugin Support

- [TreeSitter](https://github.com/nvim-treesitter/nvim-treesitter)
<!-- - [LSP Diagnostics](https://neovim.io/doc/user/lsp.html) -->
<!-- - [LSP Trouble](https://github.com/folke/lsp-trouble.nvim) -->
<!-- - [LSP Saga](https://github.com/glepnir/lspsaga.nvim) -->
<!-- - [Git Signs](https://github.com/lewis6991/gitsigns.nvim) -->
<!-- - [Git Gutter](https://github.com/airblade/vim-gitgutter) -->
<!-- - [Telescope](https://github.com/nvim-telescope/telescope.nvim) -->
<!-- - [NvimTree](https://github.com/kyazdani42/nvim-tree.lua) -->
<!-- - [WhichKey](https://github.com/liuchengxu/vim-which-key) -->
- [Indent Blankline](https://github.com/lukas-reineke/indent-blankline.nvim)
<!-- - [Dashboard](https://github.com/glepnir/dashboard-nvim) -->
<!-- - [BufferLine](https://github.com/akinsho/nvim-bufferline.lua) -->
- [Lualine](https://github.com/hoob3rt/lualine.nvim)
<!-- - [Neogit](https://github.com/TimUntersberger/neogit) -->
<!-- - [Fern](https://github.com/lambdalisue/fern.vim) -->
<!-- - [Barbar](https://github.com/romgrk/barbar.nvim) -->

## ⚡️ Requirements

- Neovim >= 0.5.0

## 📦 Installation

Install the theme with your preferred package manager:

[vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'UtkarshVerma/molokai.nvim', { 'branch': 'main' }
```

[packer](https://github.com/wbthomason/packer.nvim)

```lua
use 'UtkarshVerma/molokai.nvim'
```

## 🚀 Usage

Enable the colorscheme:

```vim
" Vim Script
colorscheme molokai
```

```lua
-- Lua
vim.cmd[[colorscheme molokai]]
```

To enable the `Molokai` theme for `Lualine`, simply specify it in your lualine settings:

```lua
require('lualine').setup {
  options = {
    -- ... your lualine config
    theme = 'molokai'
    -- ... your lualine config
  }
}
```

<!-- ## ⚙️ Configuration

> ❗️ configuration needs to be set **BEFORE** loading the color scheme with `colorscheme molokai`

| Option                              | Default   | Description                                                                                                                                                     |
| ----------------------------------- | --------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| molokai_terminal_colors          | `true`    | Configure the colors used when opening a `:terminal` in Neovim                                                                                                  |
| molokai_italic_comments          | `true`    | Make comments italic                                                                                                                                            |
| molokai_italic_keywords          | `true`    | Make keywords italic                                                                                                                                            |
| molokai_italic_functions         | `false`   | Make functions italic                                                                                                                                           |
| molokai_italic_variables         | `false`   | Make variables and identifiers italic                                                                                                                           |
| molokai_transparent              | `false`   | Enable this to disable setting the background color                                                                                                             |
| molokai_hide_inactive_statusline | `false`   | Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**. |
| molokai_sidebars                 | `{}`      | Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`                                                      |
| molokai_transparent_sidebar      | `false`   | Sidebar like windows like `NvimTree` get a transparent background                                                                                               |
| molokai_dark_sidebar             | `true`    | Sidebar like windows like `NvimTree` get a darker background                                                                                                    |
| molokai_dark_float               | `true`    | Float windows like the lsp diagnostics windows get a darker background.                                                                                         |
| molokai_colors                   | `{}`      | You can override specific color groups to use other groups or a hex color                                                                                       |
| molokai_day_brightness           | `0.3`     | Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors                                                  |
| molokai_lualine_bold             | `false`   | When `true`, section headers in the lualine theme will be bold                                                                                                  |

```lua
-- Example config in Lua
vim.g.molokai_italic_functions = true
vim.g.molokai_sidebars = { "qf", "vista_kind", "terminal", "packer" }

-- Change the "hint" color to the "orange" color, and make the "error" color bright red
vim.g.molokai_colors = { hint = "orange", error = "#ff0000" }

-- Load the colorscheme
vim.cmd[[colorscheme molokai]]
```

```vim
" Example config in VimScript
let g:molokai_style = "night"
let g:molokai_italic_functions = 1
let g:molokai_sidebars = [ "qf", "vista_kind", "terminal", "packer" ]

" Change the "hint" color to the "orange" color, and make the "error" color bright red
let g:molokai_colors = {
  \ 'hint': 'orange',
  \ 'error': '#ff0000'
\ }

" Load the colorscheme
colorscheme molokai
```

### Making `undercurls` work properly in **Tmux**

To have undercurls show up and in color, add the following to your **Tmux** config file:

```sh
# Undercurl
set -g default-terminal "${TERM}"
set -as terminal-overrides ',*:Smulx=\E[4::%p1%dm'  # undercurl support
set -as terminal-overrides ',*:Setulc=\E[58::2::%p1%{65536}%/%d::%p1%{256}%/%{255}%&%d::%p1%{255}%&%d%;m'  # underscore colours - needs tmux-3.0
``` -->

## 🍭 Extras

You can easily use the color palette for other plugins inside your Neovim config:

```lua
local colors = require("molokai.colors").setup({}) -- pass in any of the config options as explained above
local utils = requires("molokai.util")

aplugin.background = colors.bg_dark
aplugin.my_error = util.brighten(colors.red1, 0.3)
```
