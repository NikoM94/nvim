return {
  {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    branch = 'main',
    build = ':TSUpdate',
    init = function()
      local parser_installed = {
        'python',
        'go',
        'c',
        'lua',
        'vim',
        'vimdoc',
        'javascript',
        'html',
        'css',
        'query',
        'markdown_inline',
        'markdown',
        'rust',
        'c_sharp',
      }

      vim.defer_fn(function()
        require('nvim-treesitter').install(parser_installed)
      end, 1000)
      require('nvim-treesitter').update()

      -- auto-start highlights & indentation
      vim.api.nvim_create_autocmd('FileType', {
        desc = 'User: enable treesitter highlighting',
        callback = function(ctx)
          -- highlights
          local hasStarted = pcall(vim.treesitter.start) -- errors for filetypes with no parser

          -- indent
          -- local noIndent = {}
          -- if hasStarted and not vim.list_contains(noIndent, ctx.match) then
          --   vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
          -- end
        end,
      })
    end,
  },
  {
    {
      'MeanderingProgrammer/treesitter-modules.nvim',
      dependencies = { 'nvim-treesitter/nvim-treesitter' },
      opts = {
        incremental_selection = {
          enable = true,
          keymaps = {
            init_selection = '<A-o>',
            node_incremental = '<A-o>',
            scope_incremental = '<A-O>',
            node_decremental = '<A-i>',
          },
        },
      },
    },
  },
}
