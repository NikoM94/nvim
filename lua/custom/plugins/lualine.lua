return {
  'nvim-lualine/lualine.nvim',
  enabled = false,
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = function()
    local custom_theme = require 'lualine.themes.ayu_mirage'
    custom_theme.normal.c.bg = '#222436'
    require('lualine').setup {
      options = {
        theme = custom_theme,
      },
    }
  end,
}
