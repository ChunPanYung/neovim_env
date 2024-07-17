-- [[ Keymap ]]
local keymap = vim.api.nvim_set_keymap

-- Map <C-_> and <C-/> to gcc
keymap("n", "<C-_>", "gcc", { silent = true })
keymap("v", "<C-_>", "gc", { silent = true })

-- [[ Insert Mode ]]
vim.keymap.set("i", "<C-H>", "<C-W>", { desc = "Delete Word." }) -- map <C-H> and <C-BS> to delete word
vim.keymap.set("i", "<M-BS>", "<C-W>", { desc = "Delete Word." }) -- map <M-BS> to delete word
vim.keymap.set("i", "<C-s>", "<Esc><Cmd>write<CR>i", { desc = "Save file." }) -- map <C-s> to save file

-- [[ Normal mode ]]

-- [[ buffer ]]
vim.keymap.set('n', '<Leader>zz', '<Cmd>write | bdelete<CR>',
  {desc = "Write and delete buffer."}
)
vim.keymap.set("n", "<leader>bd", "<Cmd>bdelete<CR>",
  {desc = "Delete buffer."}
)
vim.keymap.set("n", "<leader>q", "<Cmd>bdelete<CR>",
  {desc = "Delete buffer."}
)

-- [[ insert single character before cursor ]]
vim.cmd([[
nnoremap ,i :exec "normal i".nr2char(getchar())."\e"<CR>
nnoremap ,a :exec "normal a".nr2char(getchar())."\e"<CR>
]])

-- move up/down by visual line instead of text line
vim.keymap.set("n", "j", "gj")
vim.keymap.set("n", "k", "gk")
