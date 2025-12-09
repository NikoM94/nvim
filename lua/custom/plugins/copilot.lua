return {
  {
    'zbirenbaum/copilot.lua',
    dependencies = {
      'copilotlsp-nvim/copilot-lsp',
    },
    event = 'InsertEnter',
    build = ':Copilot auth',
    config = function()
      require('copilot').setup {
        filetypes = {
          javascript = true,
          typescript = true,
          css = true,
          html = true,
          python = false,
          lua = false,
          ['*'] = false, -- disable for all other filetypes and ignore default `filetypes`
        },
        suggestion = {
          enabled = true,
          auto_trigger = true,
          keymap = {
            accept = '<leader><Tab>',
            next = '<leader><§>',
            prev = '<leader><½>',
          },
        },
        panel = { enabled = false },
        keys = {
          vim.keymap.set('n', '<leader>pp', '<cmd>:Copilot panel toggle<CR>', { desc = 'Toggle copilot panel' }),
        },
      }
    end,
  },
}
