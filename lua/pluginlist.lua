return {

    {
        "numToStr/Comment.nvim",
        config = function()
            require("Comment").setup()
        end
    },

    {
        "navarasu/onedark.nvim",
        priority = 1000,
        config = function()
            vim.cmd("colorscheme onedark")
        end
    },

    -- MASON with basic LSP
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig',
    'lewis6991/gitsigns.nvim',

    -- Lua development
    'folke/neodev.nvim',

    -- Autoformater with LSP
    'lukas-reineke/lsp-format.nvim',

    -- Completion
    {
        'hrsh7th/nvim-cmp',
        dependencies = {
            'L3MON4D3/LuaSnip',
            'saadparwaiz1/cmp_luasnip',
            'rafamadriz/friendly-snippets',

            'hrsh7th/cmp-nvim-lsp',
        },
    },

    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
    },

    {
        'nvim-telescope/telescope.nvim',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },

    {
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'make',
    },

    -- Nvimtree
    'nvim-tree/nvim-tree.lua',
    'nvim-tree/nvim-web-devicons',

    'jlanzarotta/bufexplorer',

    {
        'nvim-lualine/lualine.nvim',
        dependencies = {
            "nvim-tree/nvim-web-devicons"
        },
        config = function()
            require("lualine").setup({
                icons_enabled = true,
                theme = 'onedark',
            })
        end
    }
}
