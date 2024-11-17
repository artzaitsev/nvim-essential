-- Leader
vim.g.mapleader = " "

-- Buffers
vim.keymap.set('n', '<leader>w', ':w<CR>')
vim.keymap.set('n', '<leader>q', ':q<CR>')

-- Neo-tree
vim.keymap.set('n', '<leader>e', ':Neotree left toggle reveal<CR>')

-- Splits
vim.keymap.set('n', '|', ':vsplit<CR>')
vim.keymap.set('n', '\\', ':split<CR>')

-- Split navigation
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

-- Tabs
vim.keymap.set('n', '<Tab>', ':BufferLineCycleNext<CR>')
vim.keymap.set('n', '<s-Tab>', ':BufferLineCyclePrev<CR>')
vim.keymap.set('n', '<leader>x', ':BufferLinePickClose<CR>')
vim.keymap.set('n', '<c-x>', ':BufferLineCloseOther<CR>')


-- Other
vim.keymap.set("n", "<leader>d", "yyp", { noremap = true, silent = true }) -- duplicate line
vim.keymap.set("v", "<Tab>", ">gv", { noremap = true, silent = true })  -- Добавить отступ и сохранить выделение
vim.keymap.set("v", "<S-Tab>", "<gv", { noremap = true, silent = true }) -- Уменьшить отступ и сохранить выделение
