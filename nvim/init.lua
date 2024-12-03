require("config.lazy")

vim.cmd([[colorscheme catppuccin]])
vim.opt.relativenumber = false

vim.g.netrw_banner = 0
vim.keymap.set("n", "<leader>e", ":Ex<CR>", { noremap = true, silent = true })
