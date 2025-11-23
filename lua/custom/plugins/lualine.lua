return {
  'nvim-lualine/lualine.nvim',
  enabled = false,
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local custom_theme = require 'lualine.themes.modus-vivendi'
    custom_theme.normal.c.bg = 'none'
    require('lualine').setup {
      options = {
        theme = custom_theme,
      },
    }
  end,
}
