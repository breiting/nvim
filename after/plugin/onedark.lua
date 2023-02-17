require('onedark').setup {
    style = 'warmer',
    highlights = {
        ["@comment"] = {fg = '$orange'}
    }
}

-- hello world

require('onedark').load()
vim.o.termguicolors = true
