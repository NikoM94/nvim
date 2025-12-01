return {
  'nvim-lualine/lualine.nvim',
  enabled = true,
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local custom_theme = require 'lualine.themes.tokyonight-night'
    custom_theme.normal.c.bg = '#1A1B26'
    require('lualine').setup {
      options = {
        theme = custom_theme,
      },
    }
  end,
}
