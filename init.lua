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

-- On curser move do animation
vim.api.nvim_set_keymap('n', 'n', 'n:lua require("specs").show_specs()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'N', 'N:lua require("specs").show_specs()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<c-d>', '<c-d>:lua require("specs").show_specs()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<c-u>', '<c-u>:lua require("specs").show_specs()<CR>', { noremap = true, silent = true })

