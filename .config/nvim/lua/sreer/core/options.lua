--
-- /lua/sreer/core/options.lua
--

vim.cmd("let g:netrw_liststyle = 3")

-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = true

local opt = vim.opt

-- line numbers
opt.number = true
opt.relativenumber = true

-- tabs & indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.smartindent = true

-- text wrapping
opt.textwidth = 0
opt.wrapmargin = 1
opt.formatoptions:append 't'
opt.formatoptions:remove 'l'

-- Case insensitive searching UNLESS \C or capital in search
opt.ignorecase = true
opt.smartcase = true

-- Show sign column
opt.signcolumn = "yes"

-- Sync clipboard between OS and Neovim
opt.clipboard:append 'unnamedplus'

-- Cursorline
opt.cursorline = true

-- Highlight on search
opt.hlsearch = true

-- Don't show the mode
opt.showmode = false

-- Save undo history
opt.undofile = true

-- Configure how new splits should be opened
opt.splitright = true
opt.splitbelow = true

-- Decrease update time
opt.updatetime = 250
opt.timeoutlen = 500

-- NOTE: you should make sure your terminal supports this
opt.termguicolors = true
opt.background = "dark"

-- Sets whitespace characters
opt.list = true
opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
