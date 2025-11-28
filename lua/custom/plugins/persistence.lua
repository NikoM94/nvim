return {
  'folke/persistence.nvim',
  event = 'VeryLazy',
  opts = {
    dir = vim.fn.stdpath 'state' .. '/sessions',
  },
  config = function(_, opts)
    require('persistence').setup(opts)

    vim.keymap.set('n', '<leader>ls', function()
      require('persistence').load()
    end, { desc = 'Load the session for the current directory' })

    vim.keymap.set('n', '<leader>lS', function()
      require('persistence').select()
    end, { desc = 'Select session to load' })

    vim.keymap.set('n', '<leader>ll', function()
      require('persistence').load { last = true }
    end, { desc = 'Load last session' })

    vim.keymap.set('n', '<leader>ld', function()
      require('persistence').stop()
    end, { desc = "Don't save session on exit" })
  end,
}
