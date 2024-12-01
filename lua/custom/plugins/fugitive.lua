return {
  'tpope/vim-fugitive',
  config = function()
    local set = vim.keymap.set
    set('n', '<leader>G', ':Git<CR>', { desc = '[G]it status' })
    -- NOTE: not really used over gitsigns blame, might use later
    -- set('n', '<leader>gb', ':Git blame<CR>', { desc = 'Git blame' })
    set('n', '<leader>gc', ':Git commit<CR>', { desc = '[G]it [C]ommit' })
    set('n', '<leader>gP', ':Git push<CR>', { desc = '[G]it [P]ush' })
  end,
}
