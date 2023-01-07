--print("Config: /settings/set.lua")

-- Editor settings
vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.smartindent = true
vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = vim.fn.expand("~") .. "/.vim/undodir/"
vim.opt.undofile = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.termguicolors = true
vim.opt.colorcolumn = "120"

-- Give more space for displaying messages.
vim.opt.cmdheight = 2

-- Having longer updatetime (default is 4000ms = 4s) leads to noticeable
-- delays and poor user experience.
vim.opt.updatetime = 50

vim.g.mapleader = " "
vim.opt.clipboard = "unnamedplus"

vim.o.guifont = "JetBrains Mono NL"

