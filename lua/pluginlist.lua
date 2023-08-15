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
    }

-- 
--     -- Onedark color scheme
--     {
--         'navarasu/onedark.nvim',
--         config = function()


}
