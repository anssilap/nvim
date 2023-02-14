-- English language by default
require("settings.general")

if OS() == "win" then
    vim.api.nvim_exec('language en_US', true)
end

require("settings.packer")
require("settings.set")
require("settings.keybinds")

-- Set wordwrap for given filetypes
vim.api.nvim_command("augroup filetype_wrap")
vim.api.nvim_command("autocmd!")
vim.api.nvim_command("autocmd FileType markdown setlocal wrap")
vim.api.nvim_command("autocmd FileType text setlocal wrap")
vim.api.nvim_command("augroup END")

