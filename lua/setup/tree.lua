require("nvim-tree").setup({
    sort_by = "case_sensitive",
    view = {
        adaptive_size = true,
        mappings = {
            list = {
                { key = "u", action = "dir_up" },
            },
        },
    },
    renderer = {
        group_empty = true,
    },
    filters = {
        dotfiles = true,
    },
})

vim.api.nvim_set_keymap('n', '<leader>jf', ':NvimTreeToggle<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', 'jf', ':NvimTreeToggle<CR>', { noremap = true })
