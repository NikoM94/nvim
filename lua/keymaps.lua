local map = vim.keymap.set
-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
map('n', '<Esc>', '<cmd>nohlsearch<CR>')
-- setup keymap to enter this file
map('n', '<leader>vc', '<cmd>:e $MYVIMRC<CR>', { desc = 'Open init.lua' })
-- Diagnostic keymaps
-- map('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
-- Save current buffer with Ctrl+S and show notification
local save_buf = function()
  local buf_name = vim.api.nvim_buf_get_name(0)
  local f_name = buf_name:match '^.+/(.+)$' -- only filename, not full path
  vim.cmd 'write'
  vim.notify(string.format('%s saved', f_name), vim.log.levels.INFO)
end

map('n', '<C-s>', save_buf, { desc = 'Save current buffer' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
map('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

--  See `:help wincmd` for a list of all window commands
map('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
map('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
map('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
map('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

--center screen on cursor after scrolling with <C-d-u-f-b>
map('n', '<C-d>', '<C-d>zz')
map('n', '<C-u>', '<C-u>zz')
map('n', '<C-f>', '<C-f>zz')
map('n', '<C-b>', '<C-d>zz')

-- Clear Copilot suggestion or fallback to other functionality
-- vim.keymap.set('n', '<esc>', function()
--   if not require('copilot-lsp.nes').clear() then
--   end
-- end, { desc = 'Clear Copilot suggestion or fallback' })
