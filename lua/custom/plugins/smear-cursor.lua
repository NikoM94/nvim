return {
  'sphamba/smear-cursor.nvim',
  enabled = false,
  config = function()
    require('smear_cursor').setup()
  end,
}
