return {
  'kdheepak/tabline.nvim',
  event = 'BufReadPre',
  config = function()
    require('tabline').setup {
      options = {
        show_filename_only = true,
        offsets = {
          {
            filetype = 'snacks_layout_box',
            text = 'Explorer',
            highglight = 'Directory',
            text_align = 'left',
          },
        },
      },
    }
  end,
  keys = {
    { '<S-l>', '<cmd>:TablineBufferNext<CR>', desc = 'Go to next buffer' },
    { '<S-h>', '<cmd>:TablineBufferPrevious<CR>', desc = 'Go to previous buffer' },
  },
}
