return {
  { -- You can easily change to a different colorscheme.
    -- Change the name of the colorscheme plugin below, and then
    -- change the command in the config to whatever the name of that colorscheme is
    --
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`
    'ellisonleao/gruvbox.nvim',
    lazy = false,    -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    name = 'gruvbox',
    config = function()
      require('gruvbox').setup {
        commentStyle = { italic = true },
        keywordStyle = { italic = true },
      }
      -- Load the colorscheme here
      vim.cmd.colorscheme 'gruvbox'

    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
