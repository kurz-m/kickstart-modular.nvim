return {
  { -- You can easily change to a different colorscheme.
    -- Change the name of the colorscheme plugin below, and then
    -- change the command in the config to whatever the name of that colorscheme is
    --
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`
    'iagorrr/noctishc.nvim',
    lazy = false,    -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require('noctishc').setup {
        -- style = 'night',
        -- transparent = true,
        -- styles = {
        --   comments = { italic = true },
        --   keywords = { italic = true },
        -- },
        -- on_colors = function(colors)
        --   colors.hint = colors.orange
        --   colors.error = "#ff0000"
        -- end
      }
      -- Load the colorscheme here
      vim.cmd.colorscheme 'noctishc'

      -- You can configure highlights by doing something like
      vim.cmd.hi 'Comment gui=none'
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et

