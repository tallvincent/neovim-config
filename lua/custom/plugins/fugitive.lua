return {
  'tpope/vim-fugitive',
  config = function()
    vim.keymap.set('n', '<leader>F', ':Git<CR>', { desc = '[F]ugitivestatus' })
    vim.keymap.set('n', '<leader>bb', ':Git blame<CR>', { desc = 'Git blame' })
    vim.keymap.set('n', '<leader>fc', ':Git commit<CR>', { desc = '[F]ugitive [C]ommit' })
  end,
}
