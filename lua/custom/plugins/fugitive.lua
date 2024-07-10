return {
  'tpope/vim-fugitive',
  config = function()
    vim.keymap.set('n', '<leader>F', ':Git<CR>', { desc = 'Git status' })
    vim.keymap.set('n', '<leader>bb', ':Git blame<CR>', { desc = 'Git blame' })
  end,
}
