-- local g = vim.g
local opt = vim.opt
-- local api = vim.api
-- opt.expandtab = true
opt.shiftwidth = 4
opt.tabstop = 4
opt.softtabstop = 4
-- opt.foldmethod = "indent"
opt.smartindent = true
opt.foldlevel = 99
opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"
-- g.javaScript_fold = 1
vim.api.nvim_set_keymap('n', '<c-g>', '<CMD>lua require("FTerm").toggle()<CR>' , {noremap=false})
vim.api.nvim_set_keymap('t', '<c-g>', [[<C-\><C-N><CMD>lua require("FTerm").toggle()<CR>]] , {noremap=false,silent=true})
vim.api.nvim_set_keymap('n', '<c-f>', [[<CMD>lua vim.lsp.buf.formatting()<CR>]] , {noremap=false,silent=true})

