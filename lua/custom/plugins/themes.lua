return {
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    config = function()
      vim.cmd 'colorscheme rose-pine'
    end,
  },
  {
    'aktersnurra/no-clown-fiesta.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require('no-clown-fiesta').setup {
        theme = 'dark',
        transparent = 'false',
      }
      -- vim.cmd [[colorscheme no-clown-fiesta-dark]]
    end,
  },
  {
    'folke/tokyonight.nvim',
    lazy = false,
    config = function()
      require('tokyonight').setup {
        style = 'moon',
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
  },
  {
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
      -- vim.cmd [[colorscheme carbonfox]]
      -- require 'user.ui.feline_nightfox'
    end,
  },
  {
    'bluz71/vim-moonfly-colors',
    name = 'moonfly',
    lazy = true,
    config = function()
      vim.g.moonflyTransparent = false
    end,
  },
  {
    'ellisonleao/gruvbox.nvim',
    config = function()
      require('gruvbox').setup {
        terminal_colors = true, -- add neovim terminal colors
        undercurl = true,
        underline = true,
        bold = true,
        italic = {
          strings = false,
          emphasis = true,
          comments = true,
          operators = false,
          folds = true,
        },
        strikethrough = true,
        invert_selection = false,
        invert_signs = false,
        invert_tabline = false,
        inverse = true, -- invert background for search, diffs, statuslines and errors
        contrast = 'hard', -- can be "hard", "soft" or empty string
        palette_overrides = {},
        overrides = {},
        dim_inactive = false,
        transparent_mode = false,
      }
      -- vim.cmd 'colorscheme gruvbox'
    end,
  },
  {
    'everviolet/nvim',
    name = 'evergarden',
    priority = 1000, -- Colorscheme plugin is loaded first before any other plugins
    config = function()
      require('evergarden').setup {
        theme = {
          variant = 'winter', -- 'winter'|'fall'|'spring'|'summer'
          accent = 'green',
        },
        editor = {
          transparent_background = false,
          sign = { color = 'none' },
          float = {
            color = 'mantle',
            solid_border = false,
          },
          completion = {
            color = 'surface1',
          },
        },
        style = {
          tabline = { 'italic', 'reverse' },
          search = { 'italic', 'reverse' },
          incsearch = { 'italic', 'reverse' },
          types = { 'italic' },
          keyword = { 'italic' },
          comment = { 'italic' },
        },
        integrations = {
          blink_cmp = true,
          cmp = true,
          fzf_lua = true,
          gitsigns = true,
          indent_blankline = { enable = true, scope_color = 'green' },
          mini = {
            enable = true,
            animate = true,
            clue = true,
            completion = true,
            cursorword = true,
            deps = true,
            diff = true,
            files = true,
            hipatterns = true,
            icons = true,
            indentscope = true,
            jump = true,
            jump2d = true,
            map = true,
            notify = true,
            operators = true,
            pick = true,
            starters = true,
            statusline = true,
            surround = true,
            tabline = true,
            test = true,
            trailspace = true,
          },
          nvimtree = true,
          rainbow_delimiters = true,
          symbols_outline = true,
          telescope = true,
          which_key = true,
          neotree = true,
        },
      }
      -- vim.cmd.colorscheme 'evergarden'
    end,
  },
  {
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
      -- vim.cmd.colorscheme 'catppuccin'
    end,
  },
}
