-- Global variables remap 
-- ---------------------------------------

vim.g.mapleader = " "
vim.g.NERDTreeWinPos = "right"

-- ---------------------------------------

-- File Explorer Remap
-- -------------------------------------------------------------------------------------

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex) -- Open the traditional neovim explorer
vim.keymap.set("n", "<leader>e", vim.cmd.NERDTreeToggle) -- Toggle Nerd tree on and off
vim.keymap.set("n", "<leader>ef", vim.cmd.NERDTreeFocus) -- Open the already open explorer
vim.keymap.set("n", "<leader>er", vim.cmd.NERDTreeRefreshRoot) -- Refresh explorer

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
set.shell = "powershell"
set.shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;"
set.shellredir = "-RedirectStandardOutput %s -NoNewWindow -Wait"
set.shellpipe = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode"
set.shellquote = ""
set.shellxquote = ""

-- ---------------------------------------
