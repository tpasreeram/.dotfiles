--
-- lua/sreer/core/keymaps.lua
--

vim.g.mapleader = ' '
local keymap = vim.keymap

keymap.set('i', 'jk', '<ESC>', { desc = 'Exit insert mode with jk' })

keymap.set('n', '<ESC>', '<cmd>nohl<CR>')   -- maybe '<leader>nh' could work too

-- Split windows
keymap.set('n', '<leader>sv', "<C-w>v", { desc = "Split window vertically" })
keymap.set('n', '<leader>sh', "<C-w>s", { desc = "Split window horizontally" })
keymap.set('n', '<leader>se', "<C-w>=", { desc = "Make splits equal size" })
keymap.set('n', '<leader>sx', "<cmd>close<CR>", { desc = "Close current split" })

-- Buffers and tabs
keymap.set('n', '<leader>bn', "<cmd>bn<CR>", { desc = "Go to next buffer" })
keymap.set('n', '<leader>bp', "<cmd>bp<CR>", { desc = "Go to previous buffer" })
keymap.set('n', '<leader>bq', "<cmd>bd<CR>", { desc = "Delete current buffer" }) -- may change to '<leader>bd'

-- Remap to deal with word wrap
keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('yank_highlight', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
