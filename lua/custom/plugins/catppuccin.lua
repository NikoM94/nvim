return {
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000,
  config = function()
    require('catppuccin').setup {
      flavour = 'mocha', -- latte, frappe, macchiato, mocha
      background = {
        light = 'latte',
        dark = 'mocha',
      },
      transparent_background = false,
      show_end_of_buffer = false,
      term_colors = true,
      dim_inactive = {
        enabled = false,
        shade = 'dark',
        percentage = 0.15,
      },
      styles = {
        conditionals = { 'italic' },
        keywords = { 'bold' },
        functions = { 'italic' },
      },
      auto_integrations = true,
      -- integrations = {
      --   cmp = true,
      gitsigns = true,
      --   nvimtree = true,
      --   telescope = true,
      --   treesitter = true,
      --   notify = true,
      mini = true,
      --   lualine = true,
      -- },
    }
    vim.cmd.colorscheme 'catppuccin'
  end,
}
