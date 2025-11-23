return {
  {
    'CopilotC-Nvim/CopilotChat.nvim',
    dependencies = {
      { 'nvim-lua/plenary.nvim', branch = 'master' },
    },
    build = 'make tiktoken',
    opts = {
      -- See Configuration section for options
      {
        model = 'gpt-4.1', -- AI model to use
        temperature = 0.1, -- Lower = focused, higher = creative
        window = {
          layout = 'float',
          width = 80, -- Fixed width in columns
          height = 20, -- Fixed height in rows
          border = 'rounded', -- 'single', 'double', 'rounded', 'solid'
          title = '🤖 AI Assistant',
          zindex = 100, -- Ensure window stays on top
        },
        auto_insert_mode = false, -- Enter insert mode when opening
      },
    },
    keys = {
      { '<leader>aa', '<cmd>CopilotChatToggle<CR>', desc = 'Open AI Chat' },
    },
  },
}
