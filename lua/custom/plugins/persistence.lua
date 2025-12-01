return {
  'folke/persistence.nvim',
  event = 'BufReadPre',
  opts = {},
  keys = {
    {
      '<leader>ls',
      function()
        require('persistence').load()
      end,
      desc = 'Load the session for the current directory',
    },
    {
      '<leader>lS',
      function()
        require('persistence').select()
      end,
      desc = 'Select session to load',
    },
    {
      '<leader>ll',
      function()
        require('persistence').load { last = true }
      end,
      desc = 'Load last session',
    },
    {
      '<leader>ld',
      function()
        require('persistence').stop()
      end,
      desc = "Don't save current session",
    },
  },
}
