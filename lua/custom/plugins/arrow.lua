return {
  'otavioschwanck/arrow.nvim',
  dependencies = {
    { 'nvim-tree/nvim-web-devicons' },
  },
  opts = {
    show_icons = true,
    leader_key = ';', -- Recommended to be a single key
    buffer_leader_key = 'm', -- Per Buffer Mappings
  },
  keys = {
    {
      '<C-p>',
      function()
        require('arrow.persist').previous()
      end,
      desc = 'Previous Arrow',
    },
    {
      '<C-n>',
      function()
        require('arrow.persist').next()
      end,
      desc = 'Next Arrow',
    },
  },
}
