-- Install packer
-- This file is not loaded automatically but needs to be sourced with :so and then
-- call PackerSync to install all packages
--
local install_path = vim.fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
    vim.fn.system { 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path }
    vim.cmd [[packadd packer.nvim]]
end

-- Install packages
--
require('packer').startup(function(use)
    -- Package manager
    use 'wbthomason/packer.nvim'

    -- Nvimtree
    use { 'nvim-tree/nvim-tree.lua' }
    use { 'nvim-tree/nvim-web-devicons' }

    -- Fuzzy Finder (files, lsp, etc)
    use { 'nvim-telescope/telescope.nvim', branch = '0.1.x', requires = { 'nvim-lua/plenary.nvim' } }

    -- Fuzzy Finder Algorithm which requires local dependencies to be built. Only load if `make` is available
    use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make', cond = vim.fn.executable 'make' == 1 }

    -- Onedark color scheme
    use 'navarasu/onedark.nvim'

    -- Highlight, edit, and navigate code
    use { 'nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' } }
    use { 'nvim-treesitter/nvim-treesitter-textobjects', after = 'nvim-treesitter' }

    -- LSP
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lua' },

            -- Snippets
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
        }
    }

    -- Comment out regions and lines
    use { 'numToStr/Comment.nvim' }

    -- Autoformater with LSP
    use { 'lukas-reineke/lsp-format.nvim' }

    -- lua-line
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    -- Others
    use { 'fatih/vim-go' }
    use { 'jlanzarotta/bufexplorer' }
    use { 'lewis6991/gitsigns.nvim' }
end)
