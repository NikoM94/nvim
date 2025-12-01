return {
  'EdenEast/nightfox.nvim',
  lazy = true,
  priority = 1000,
  config = function()
    require('nightfox').setup {
      options = {
        styles = {
          comments = 'italic',
          keywords = 'bold',
          functions = 'italic',
          variables = 'NONE',
        },
      },
    }
    vim.cmd [[colorscheme carbonfox]]
    require 'user.ui.feline_nightfox'
  end,
}
