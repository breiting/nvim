vim.keymap.set('n', '<leader>fp',
    ":w<cr> :call system('/Applications/OpenSCAD.app/Contents/MacOS/OpenSCAD ' . expand('%:p') . ' 2> /dev/null &')<cr>",
    {})
