return {
  {
    'ziglang/zig.vim',
    ---@module "zig.vim"
    config = function ()
      vim.g.zig_fmt_autosave = false
    end
  },
}
