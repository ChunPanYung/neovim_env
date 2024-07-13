-- [[ Keymap ]]
local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

keymap("v", "<C-_>", "gc", { silent = true }) -- Map <C-_> and <C-/> to gcc

-- [[ Insert Mode ]]
keymap("i", "<C-H>", "<C-W>", { silent = true }) -- map <C-H> and <C-BS> to delete word
keymap("i", "<M-BS>", "<C-W>", { silent = true }) -- map <M-BS> to delete word
keymap("i", "<C-s>", "<Esc>:write<CR>i", { silent = true }) -- map <M-BS> to delete word

-- [[ Normal mode ]]
-- Map <C-_> and <C-/> to gcc
keymap("n", "<C-_>", "gcc", { silent = true })

-- [[ buffer ]]
vim.keymap.set('n', '<Leader>zz', '<Cmd>write | bdelete<CR>', opts)
vim.keymap.set("n", "<leader>bd", "<Cmd>bdelete<CR>", opts)
vim.keymap.set("n", "<leader>q", "<Cmd>bdelete<CR>", opts)

-- [[ insert single character before cursor ]]
vim.cmd([[
nnoremap ,i :exec "normal i".nr2char(getchar())."\e"<CR>
nnoremap ,a :exec "normal a".nr2char(getchar())."\e"<CR>
]])

-- move up/down by visual line instead of text line
keymap("n", "j", "gj", opts)
keymap("n", "k", "gk", opts)
