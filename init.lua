-- English language by default
require("settings.general")

if OS() == "win" then
    vim.api.nvim_exec('language en_US', true)
end

require("settings.packer")
require("settings.set")
require("settings.keybinds")

