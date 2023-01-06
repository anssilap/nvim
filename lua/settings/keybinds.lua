--print("Config: /settings/keybinds.lua")

vim.keymap.set("n", "<leader>f", vim.cmd.Rex)
vim.keymap.set("n", "<leader>b", "<cmd>:bnext<cr>")

vim.keymap.set("n", "<C-p>", "<cmd>Telescope find_files<cr>")
vim.keymap.set("n", "<C-f>", "<cmd>Telescope live_grep<cr>")

vim.keymap.set("n", "<leader>k", ":CommentToggle<cr>")
vim.keymap.set("v", "<leader>k", ":'<,'>CommentToggle<cr>")

vim.keymap.set("n", "<C-v>", '"+P')
vim.keymap.set("n", "D", '"_D')
vim.keymap.set("v", "D", '"_D')
vim.keymap.set("n", "d", '"_d')
vim.keymap.set("v", "d", '"_d')
vim.keymap.set("n", "c", '"_c')
vim.keymap.set("v", "c", '"_c')

