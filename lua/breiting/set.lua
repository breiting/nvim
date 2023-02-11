-- Global
vim.o.syntax = 'on'
vim.o.hidden = true
vim.o.swapfile = false
vim.o.backup = false
vim.o.clipboard = 'unnamedplus'
vim.o.ruler = true
vim.o.mouse = 'a'
vim.o.guicursor = ''
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.scrolloff = 4
vim.o.listchars = 'tab:> ,trail:·'
vim.o.completeopt = 'menuone,noinsert,noselect'
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.hlsearch = false
vim.o.incsearch = true

vim.g.mapleader = " "

-- Window specific
vim.wo.number = true
vim.wo.relativenumber = true
vim.wo.colorcolumn = '80'
vim.wo.cursorline = true
vim.wo.wrap = false
vim.wo.signcolumn = 'yes'
vim.wo.list = true

-- Buffer specific

vim.bo.textwidth = 80
vim.bo.tabstop = 4
vim.bo.softtabstop = 4
vim.bo.shiftwidth = 4
vim.bo.expandtab = true

--- nvim-tree
-- vim.g.nvim_tree_ignore = { '.git', 'node_modules', '.cache', '.aux', '.out', '.gz', '.fls' }
vim.g.nvim_tree_width = 40

--- LaTeX
vim.g.tex_flavor = 'latex'
vim.g.vimtex_view_general_viewer = 'open'

