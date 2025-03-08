-- Leader keys
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.g.have_nerd_font = true

-- UI settings
vim.opt.number = true
vim.opt.mouse = 'a'
vim.opt.showmode = false
vim.opt.cursorline = true
vim.opt.signcolumn = 'yes'
vim.opt.scrolloff = 10

-- Clipboard and text behavior
vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)
vim.opt.breakindent = true
vim.opt.undofile = true

-- Search behavior
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Timings
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

-- Split behavior
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Displaying invisible characters
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Substitution preview
vim.opt.inccommand = 'split'
