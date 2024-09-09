-- File: lua/custom/plugins/harpoon.lua

return {
  'ThePrimeagen/harpoon',
  lazy = false,
  branch = 'harpoon2',
  -- Optional dependency
  init = function()
    local harpoon = require('harpoon')

    harpoon:setup()

    vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end, { desc = "Add to Harpoon list" } )
    vim.keymap.set("n", "<leader>e", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "show harpoon buffer" } )

    vim.keymap.set("n", "<leader>1", function() harpoon:list():select(1) end, { desc = "Harpoon to file 1" } )
    vim.keymap.set("n", "<leader>2", function() harpoon:list():select(2) end, { desc = "Harpoon to file 2" } )
    vim.keymap.set("n", "<leader>3", function() harpoon:list():select(3) end, { desc = "Harpoon to file 3" } )
    vim.keymap.set("n", "<leader>4", function() harpoon:list():select(4) end, { desc = "Harpoon to file 4" } )
    vim.keymap.set("n", "<leader>5", function() harpoon:list():select(5) end, { desc = "Harpoon to file 5" } )

    vim.keymap.set("n", "C-S-N", function() harpoon:list():select(4) end, { desc = "toggle next file" } )
    vim.keymap.set("n", "C-S-P", function() harpoon:list():select(5) end, { desc = "toggle previous file" } )
  end,
  dependencies = { 'nvim-lua/plenary.nvim' },
}

