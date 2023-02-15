--print("Config: /settings/keybinds.lua")

vim.keymap.set("n", "<leader>F", vim.cmd.Rex)
vim.keymap.set("n", "<leader>b", "<cmd>:bnext<cr>")

-- Fuzzy find ALL THE THINGS!
vim.keymap.set("n", "<C-p>", "<cmd>Telescope find_files<cr>")
vim.keymap.set("n", "<C-f>", "<cmd>Telescope live_grep<cr>")

-- Comment/uncomment current or selected lines
vim.keymap.set("n", "<leader>k", ":CommentToggle<cr>")
vim.keymap.set("v", "<leader>k", ":'<,'>CommentToggle<cr>")

vim.keymap.set("n", "<C-v>", '"+P')
vim.keymap.set("n", "J", "mzJ`z")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Center cursor on screen after going half page up or down
vim.keymap.set("n", "<C-d", "<C-d>zz")
vim.keymap.set("n", "<C-u", "<C-u>zz")

-- Do not change yank buffer contents when deleting or changing
vim.keymap.set("n", "D", '"_D')
vim.keymap.set("v", "D", '"_D')
vim.keymap.set("n", "d", '"_d')
vim.keymap.set("v", "d", '"_d')
vim.keymap.set("n", "c", '"_c')
vim.keymap.set("v", "c", '"_c')

-- Format code in current buffer
vim.keymap.set("n", "<leader>f", function ()
    vim.lsp.buf.format()
end)

-- Remap esc to get out of terminal mode
vim.keymap.set("t", "<Esc>", "<C-\\><C-N>")

