return {
  { -- Autoformat
    'stevearc/conform.nvim',
    keys = {
      {
        '<leader>f',
        function()
          require('conform').format { async = true, lsp_fallback = true }
        end,
        mode = '',
        desc = '[F]ormat buffer',
      },
    },
    opts = {
      notify_on_error = true,
      formatters_by_ft = {
        lua = { 'stylua' },
        c = { 'clang_format' },
      },
      formatters = {
        clang_format = {
          prepend_args = { '--style=file:/home/makurz/.config/nvim/.clang-format' },
        },
      },

      -- Conform can also run multiple formatters sequentially
      -- python = { "isort", "black" },
      --
      -- You can use a sub-list to tell conform to run *until* a formatter
      -- is found.
      -- javascript = { { "prettierd", "prettier" } },
    },
  },
}
-- vim: ts=2 sts=2 sw=2 et
