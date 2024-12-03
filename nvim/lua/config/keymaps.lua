local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set("n", "x", '"_x')

-- Delete a word backwards
keymap.set("n", "dw", 'vb"_d')

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Disable continuations
keymap.set("n", "<Leader>o", "o<Esc>^Da", opts)
keymap.set("n", "<Leader>O", "O<Esc>^Da", opts)

-- New tab
keymap.set("n", "te", ":tabedit")
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)
vim.keymap.set("n", "<leader>sv", "<C-w>v")

-- util
keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- move line up(v)
keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- move line down(v)

keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- uncategorized
vim.keymap.set("n", "<leader>q", "<C-w>q")
vim.keymap.set("n", "<leader>a", "ggVG")
