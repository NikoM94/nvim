return {
  {
    'akinsho/bufferline.nvim',
    version = '*',
    dependencies = 'nvim-tree/nvim-web-devicons',
    event = 'BufReadPre',
    config = function()
      require('bufferline').setup {
        options = {
          -- show_close_icon = false,
          -- separator_style = 'thin',
          style_preset = require('bufferline').style_preset.minimal,
          separator_style = 'slope',
          diagnostics = 'nvim_lsp',
          offsets = {
            {
              filetype = 'snacks_layout_box',
              highlight = 'Directory',
              text_align = 'left',
            },
          },
        },
      }
    end,
    keys = {
      { '<S-h>', '<cmd>BufferLineCyclePrev<cr>', desc = 'Prev Buffer' },
      { '<S-l>', '<cmd>BufferLineCycleNext<cr>', desc = 'Next Buffer' },
    },
  },
}
