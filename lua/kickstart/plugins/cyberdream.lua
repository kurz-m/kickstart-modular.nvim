return {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      -- Load the colorscheme here
      vim.cmd.colorscheme 'cyberdream'

      -- You can configure highlights by doing something like
      vim.cmd.hi 'Comment gui=none'
    end,
}
