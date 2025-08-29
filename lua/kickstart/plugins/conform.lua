return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" },
  cmd = { "ConformInfo" },
  keys = {
    {
      -- Customize or remove this keymap to your liking
      "<leader>f",
      function()
        require("conform").format({ async = true })
      end,
      mode = "",
      desc = "Format buffer",
    },
  },
  -- This will provide type hinting with LuaLS
  ---@module "conform"
  ---@type conform.setupOpts
  opts = {
    notify_on_error = true,
    -- Define your formatters
    formatters_by_ft = {
      lua = { 'stylua' },
      c = { 'clang_format' },
      cpp = { 'clang_format' },
    },
    -- Set default options
    default_format_opts = {
      lsp_format = "fallback",
    },
    -- Customize formatters
    formatters = {
      clang_format = {
        prepend_args = function(self, ctx)
          local filetype = vim.bo[ctx.buf].filetype
          if filetype == 'c' then
            print('format c-files')
            return { '--style=file:/home/makurz/.config/nvim/.clang-format' }
          elseif filetype == 'cpp' then
            print('format cpp-files')
            return { '--style=file:/home/makurz/.config/nvim/.clang-format-cpp' }
          end
        end,
      },
    },
  },
  init = function()
    -- If you want the formatexpr, here is the place to set it
    vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
  end,
}
-- vim: ts=2 sts=2 sw=2 et
