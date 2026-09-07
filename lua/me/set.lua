vim.opt.guicursor = "" -- block cursor in every mode

vim.opt.nu = true
vim.opt.relativenumber = true -- makes 12j / 8k jumps trivial

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = false

vim.opt.wrap = false

-- no swap/backup; undo persists to disk forever instead
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false -- don't leave highlights sitting around
vim.opt.incsearch = true -- but do highlight while typing

vim.opt.termguicolors = true

vim.opt.scrolloff = 8 -- keep 8 lines of context above/below
vim.opt.signcolumn = "yes" -- stops text jittering when diagnostics appear
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"
