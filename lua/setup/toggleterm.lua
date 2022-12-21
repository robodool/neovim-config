require("toggleterm").setup{}

vim.api.nvim_set_keymap('n', '<leader>fj', ':ToggleTerm<CR>', { noremap = true })
vim.api.nvim_set_keymap('t', '<leader>fj', 'exit<CR>', {})
