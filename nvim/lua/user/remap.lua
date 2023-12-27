-- Keymaps 
-- ---------------------------------------

vim.g.mapleader = " "

-- File Explorer Remap
-- -------------------------------------------------------------------------------------

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex) -- Open the traditional neovim explorer
vim.keymap.set("n", "<leader>e", vim.cmd.NERDTreeToggle) -- Toggle Nerd tree on and off
vim.keymap.set("n", "<leader>ef", vim.cmd.NERDTreeFocus)

-- -------------------------------------------------------------------------------------

-- Terminal Remap
-- -------------------------------------------------------------------------------------

vim.keymap.set("n", "<leader>t", vim.cmd.ToggleTerm)
vim.keymap.set("n", "<leader>tt", vim.cmd.ToggleTermToggleAll)
vim.keymap.set("n", "<leader>tf", function()
    search = vim.fn.input("Enter Command: ");
    command = string.format("TermExec cmd=%s", search);
    vim.cmd(command);
end)
vim.api.nvim_set_keymap('t', '<leader>tn', '<C-\\><C-n>', {noremap = true}) 

-- ---------------------------------------

-- Settings
-- ---------------------------------------

local set = vim.opt

set.tabstop = 4
set.shiftwidth = 4
set.softtabstop = 4
set.expandtab = true
set.number = true
set.relativenumber = true

-- ---------------------------------------
