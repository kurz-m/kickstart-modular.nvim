-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Create keymaps to move around in the explorer etc
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

-- private keymaps
-- switch with the line below
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
-- switch with the line above
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")
-- add the line below to the current line with a white space
vim.keymap.set('n', 'J', 'mzJ`z')
-- scrolls down half a page and centers the cursor
vim.keymap.set('n', '<C-d>', '<C-d>zz')
-- scrolls up half a page and centers the cursor
vim.keymap.set('n', '<C-u>', '<C-u>zz')
-- searches for the next pattern match and centers the cursor
vim.keymap.set('n', 'n', 'nzzzv')
-- searches for the previous pattern match and centers the cursor
vim.keymap.set('n', 'N', 'Nzzzv')
-- keeps the current buffer and lets you copy it more than once
vim.keymap.set('x', '<leader>p', [["_dP]])
-- leader y copies the selection into the clipboard
vim.keymap.set({ 'n', 'v' }, '<leader>y', [["+y]])
-- leader Y copies the line into the clipboard
vim.keymap.set('n', '<leader>Y', [["+Y]])
-- delete to void buffer and do not lose current buffer
vim.keymap.set({ 'n', 'v' }, '<leader>d', [["_d]])
vim.keymap.set('i', '<C-c>', '<Esc>')
vim.keymap.set('n', 'Q', '<nop>')
-- vim.keymap.set('n', '<leader>s', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set('n', '<leader>x', '<cmd>!chmod +x %<CR>', { silent = true })

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- vim: ts=2 sts=2 sw=2 et
