-- example file i.e lua/custom/init.lua

-- load your globals, autocmds here or anything .__.
local g = vim.g
local opt = vim.opt

vim.api.nvim_set_keymap('n', '<leader>g', '<CMD>lua require("FTerm").toggle()<CR>' , {noremap=false})

