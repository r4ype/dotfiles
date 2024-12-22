-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
LazyVim.terminal.setup("nu")
vim.opt.smoothscroll = true
local opt = vim.opt
opt.scrolloff = 8
opt.sidescrolloff = 8
opt.wrap = false
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true
opt.updatetime = 250
opt.completeopt = { "menuone", "noselect" }
opt.backup = false
opt.writebackup = false
opt.swapfile = false
opt.undofile = true
opt.clipboard = "unnamedplus"
