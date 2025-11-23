return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local custom_palenight = require 'lualine.themes.palenight'
    custom_palenight.normal.c.bg = 'none'
    require('lualine').setup {
      options = {
        theme = custom_palenight,
      },
    }
  end,
}
