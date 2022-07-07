-- example file i.e lua/custom/init.lua

-- load your globals, autocmds here or anything .__.
local g = vim.g
local opt = vim.opt

vim.api.nvim_set_keymap('n', '<c-g>', '<CMD>lua require("FTerm").toggle()<CR>' , {noremap=false})
vim.api.nvim_set_keymap('t', '<c-g>', [[<C-\><C-N><CMD>lua require("FTerm").toggle()<CR>]] , {noremap=false,silent=true})

