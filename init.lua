vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require 'options'
require 'keymaps'
require 'autocmds'

require('scripts.beacon').setup()
require('scripts.diagnostics').setup()
require('scripts.highlights').setup()

local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end

---@type vim.Option
local rtp = vim.opt.rtp
rtp:prepend(lazypath)

require('lazy').setup {
  { import = 'custom.plugins' },
}
