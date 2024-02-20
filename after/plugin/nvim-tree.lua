require('nvim-tree').setup {
    view = {
        width = 40,
    },
    renderer = {
        icons = {
            git_placement = "after",
            show = {
                file = false,
                folder = false,
                folder_arrow = false,
            }
        }
    }
}
