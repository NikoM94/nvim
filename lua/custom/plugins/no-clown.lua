return {
  'aktersnurra/no-clown-fiesta.nvim',
  lazy = true,
  config = function()
    require('no-clown-fiesta').setup {
      theme = 'dim',
      transparent = 'false',
    }
  end,
}
