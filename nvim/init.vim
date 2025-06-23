call plug#begin()

Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline' " <== bu çok önemli
Plug 'L3MON4D3/LuaSnip'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'neovim/nvim-lspconfig'
Plug 'https://github.com/xiyaowong/transparent.nvim'
Plug 'https://github.com/neovim/nvim-lspconfig'
Plug 'https://github.com/nvim-treesitter/nvim-treesitter'

call plug#end()

colorscheme catppuccin-macchiato

set number
set relativenumber

lua require('cmp_config')

lua << EOF
require('lualine').setup {
  options = {
    theme = 'catppuccin-macchiato',
    section_separators = '',
    component_separators = '|',
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff'},
    lualine_c = {'filename'},
    lualine_x = {'diagnostics', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
}
EOF

