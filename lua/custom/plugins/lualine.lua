return {
  'nvim-lualine/lualine.nvim',
  enabled = true,
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local custom_theme = require 'lualine.themes.ayu_mirage'
    custom_theme.normal.c.bg = '#222436'
    require('lualine').setup {
      options = {
        theme = custom_theme,
      },
    }
  end,
}
