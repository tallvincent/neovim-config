local set = vim.keymap.set

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use ALT+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
set('n', '<M-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
set('n', '<M-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
set('n', '<M-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
set('n', '<M-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Tab navigation
set('n', '<M-n>', ':tabnext<CR>', { desc = 'Go to next tab' })
set('n', '<M-p>', ':tabprevious<CR>', { desc = 'Go to previous tab' })

-- Window sizing
set('n', '<M-,>', '<C-w>5<')
set('n', '<M-.>', '<C-w>5>')
set('n', '<M-t>', '<C-W>+')
set('n', '<M-s>', '<C-W>-')

-- Paste buffers
--  Paste from last yank
set('n', '<C-p>', '"0p', { desc = 'Paste from last yank' })
