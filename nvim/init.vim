lua require('plugins')
lua require('gitsigns').setup()
lua require('lsp_config')
lua require('cmd_config')
lua require('heirline_config')
lua require("toggleterm").setup()

source ~/.config/nvim/vim/configs.vim
source ~/.config/nvim/vim/shortcuts.vim

" lua vim.api.nvim_set_keymap('n', '<leader>bb', "WindowPick")

" vim.api.nvim_set_keymap('n', '<leader>ws', "WindowSwap")
" vim.api.nvim_set_keymap('n', '<leader>wq', "WindowZap")
