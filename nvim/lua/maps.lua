local keymap = vim.keymap
-- Set Leader Key "space" --
vim.g.mapleader = " "
-- Do not Yank with x --
keymap.set('n', 'x', '"_x')
-- Select All --
keymap.set('n', '<C-a>', 'gg<S-v>G')
-- Save and Quit --
keymap.set("n", '<Leader>fs', '<CMD>w<CR>')
keymap.set("n", '<Leader>qq', '<CMD>q<CR>')
keymap.set("n", '<Leader>qa', '<CMD>quitall<CR>')
-- Splits --
keymap.set("n", '<Leader>w/', '<CMD>vsplit<CR>')
keymap.set("n", '<Leader>w-', '<CMD>split<CR>')
keymap.set("n", '<Leader>wd', '<CMD>close<CR>')
keymap.set("n", '<Leader><tab>', '<CMD>:b#<CR>')
keymap.set("n", '<Leader>ww', '<C-w>w')
keymap.set("n", '<Leader>w\'', '<CMD>vsplit term://$SHELL<CR>')
-- Tabs --
keymap.set("n", '<Leader>tn', '<CMD>tabnew<CR>')
keymap.set("n", '<Leader><tab>l', '<CMD>tabnext<CR>')
keymap.set("n", '<Leader><tab>h', '<CMD>tabprevious<CR>')
keymap.set("n", '<Leader>td', '<CMD>tabclose<CR>')
-- Fuzzy Finder --
keymap.set("n", '<Leader>ff', '<CMD>Telescope find_files hidden=true no_ignore=true<CR>')
keymap.set("n", '<Leader>fr', '<CMD>Telescope oldfiles <CR>')
keymap.set("n", '<Leader>fb', '<CMD>Telescope buffers<CR>')
--Escape Insert Mode --
keymap.set("i", 'jj', '<Escape>')
--  Dashboard --
keymap.set("n", '<Leader>bh', '<CMD>Alpha<CR>')
