-- Add all plugins
vim.pack.add({
  'https://github.com/nvim-mini/mini.nvim',
  'https://github.com/neovim/nvim-lspconfig',
  'https://github.com/nvim-treesitter/nvim-treesitter',
  'https://github.com/ellisonleao/gruvbox.nvim',
  'https://github.com/sitiom/nvim-numbertoggle',
  'https://github.com/nvim-lua/plenary.nvim',
  'https://github.com/MunifTanjim/nui.nvim',
  'https://github.com/nvim-tree/nvim-web-devicons',
  'https://github.com/nvim-lualine/lualine.nvim',
  'https://github.com/nvim-telescope/telescope.nvim',
  'https://github.com/nvim-neo-tree/neo-tree.nvim',
})

-- Use plugins immediately
vim.cmd.colorscheme('gruvbox')
require('mini.basics').setup()
require('mini.surround').setup()
vim.lsp.enable({ 'lua_ls' })
vim.lsp.enable({ 'clangd' })

-- Set Up Lualine
require('lualine').setup({
  options = {
    theme = 'auto', -- Automatically detects your colorscheme
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  }
})

vim.keymap.set('n', '<C-n>', ":Neotree filesystem reveal left <CR>", {})
vim.keymap.set('n', '<C-t>', ':10split | terminal<CR>', {})
vim.keymap.set('i', 'jk', "<Esc>", { noremap = false })
vim.keymap.set('t', 'jk', '<C-\\><C-n>', { noremap = false })
vim.o.background = "dark"
