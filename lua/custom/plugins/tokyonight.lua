return {
  'folke/tokyonight.nvim',
  lazy = false,
  config = function()
    require('tokyonight').setup {
      style = 'night',
      transparent = false,
      terminal_colors = true,
      styles = {
        comments = { italic = true },
        keywords = { italic = true },
        functions = { italic = true },
        variables = { bold = false },
        sidebars = 'dark',
        floats = 'dark',
      },
      sidebars = { 'qf', 'help' },
      day_brightness = 0.3,
      hide_inactive_statusline = false,
      dim_inactive = false,
      lualine_bold = true,
      cache = true,
    }
    -- vim.cmd [[colorscheme tokyonight]]
    -- require 'user.ui.feline_nightfox'
  end,
}
