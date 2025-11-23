return {
  'famiu/feline.nvim',
  enabled = true,
  event = 'BufReadPre',
  config = function()
    require('feline').setup()
  end,
}
