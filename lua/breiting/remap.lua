vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<leader>t", "<cmd>NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader><Esc>", "<cmd>BufExplorer<CR>")
vim.keymap.set("n", "<leader>gs", "<cmd>G<CR>")

vim.keymap.set("n", "<leader>ga", "<cmd>lua vim.lsp.buf.code_action()<CR>")
